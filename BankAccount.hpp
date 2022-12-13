#pragma once

#include <utility>
#include <string>
#include <queue>
#include <chrono>

#include "helpers.hpp"
#include "BankAccountErrors.hpp"

namespace bs {

  enum AccountType {
    debit,
    deposit,
    credit
  };

  struct Delta {
    size_t timestamp;
    int64_t delta;
  };

  class BankAccount {
   public:
    BankAccount(int64_t client_id, int64_t ballance) : client_id_(client_id), ballance_(ballance) {}

    virtual ~BankAccount() = default;

    virtual size_t Withdraw(int64_t amount) = 0;

    size_t TopUp(int64_t amount) {
      ballance_ += amount;
      deltas_.push_back({GetCurrentTimestamp(), amount});
      return amount;
    }

    int64_t Transfer(int64_t delta) {
      if (delta < 0) {
        return Withdraw(-delta);
      }
      return TopUp(delta);
    }

    void SetSuspicious(bool value) {
      is_suspicious_ = value;
    }

    virtual void CalculateToDate(size_t date) = 0;

   protected:
    size_t client_id_;
    bool is_suspicious_{true};
    std::deque<Delta> deltas_;
    int64_t ballance_;
  };

  class DebitBankAccount : public BankAccount {
   public:
   
    DebitBankAccount(int64_t client_id, int64_t value, double percent) 
      : BankAccount(client_id, value), percent_(percent) {}

    ~DebitBankAccount() override = default;

    size_t Withdraw(int64_t amount) override { 
      if (amount > ballance_) {
        return 0;
      }
      ballance_ -= amount;
      deltas_.push_back({GetCurrentTimestamp(), -amount});
      return amount;
    }

    void CalculateToDate(size_t date) override {
      int64_t add_sum = 0;
      while (!deltas_.empty() && deltas_.front().timestamp < date) {
        auto Delta = deltas_.front();
        deltas_.pop_front();
        add_sum += percent_ * ballance_;
      }
      ballance_ += add_sum;
    }

    private:
      double percent_;
  };

  class DepositBankAccount : public BankAccount {
   public:
    
    DepositBankAccount(int64_t client_id, int64_t value, size_t final_timestamp) 
      : BankAccount(client_id, value), 
        final_timestamp_(final_timestamp) {}

    ~DepositBankAccount() override = default;

    void CalculateToDate(size_t date) override {
      int64_t add_sum = 0;
      while (!deltas_.empty() && deltas_.front().timestamp < date) {
        auto Delta = deltas_.front();
        deltas_.pop_front();
        if (ballance_ <= 50000) {
          add_sum += 0.03 * ballance_;
        } else if (ballance_ > 50000) {
          add_sum += 0.035 * ballance_;
        } else {
          add_sum += 0.04 * ballance_;
        }
      }
    }

    size_t Withdraw(int64_t amount) override { 
      if (GetCurrentTimestamp() <= final_timestamp_) {
        return 0;
      }
      if (amount > ballance_) {
        return 0;
      }
      ballance_ -= amount;
      deltas_.push_back({GetCurrentTimestamp(), -amount});
      return amount;
    }

    private:
      size_t final_timestamp_;
      double percent_;
  };

  class CreditBankAccount : public BankAccount {
   public:
    CreditBankAccount(int64_t client_id, int64_t value, int64_t limit, int64_t commission) :
      BankAccount(client_id, value), limit_(-limit), commission_(commission) {}

    void CalculateToDate(size_t date) override {
      int64_t add_sum = 0;
      while (!deltas_.empty() && deltas_.front().timestamp < date) {
        auto Delta = deltas_.front();
        deltas_.pop_front();
        add_sum -= commission_;
      }
    }
    
    size_t Withdraw(int64_t amount) override { 
      if (amount > ballance_ - limit_) {
        return 0;
      }
      ballance_ -= amount;
      if (ballance_ < 0) {
        ballance_ -= commission_;
        deltas_.push_back({GetCurrentTimestamp(), -commission_});
      }
      deltas_.push_back({GetCurrentTimestamp(), -amount});
      return amount;
    }

    private:
       int64_t limit_;
       int64_t commission_;
  };
}
