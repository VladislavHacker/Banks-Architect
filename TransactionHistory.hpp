#pragma once

#include <vector>
#include "Transaction.hpp"
#include "Bank.hpp"

namespace bs {

class TransactionHistory {
public:
  void SaveTransaction(Transaction transaction) {
    transactions_.push_back(transaction);
  }

  Transaction& GetTransactionInfo(size_t id) {
    return transactions_[id];
  }
  
  void SetUnsuccess(size_t id) {
    transactions_[id].status = false;
  }

private:
  std::vector<Transaction> transactions_;
};

}
