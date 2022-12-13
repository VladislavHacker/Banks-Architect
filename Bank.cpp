#include "Bank.hpp"

namespace bs {
  std::shared_ptr<BankAccount> Bank::AccountFactory(AccountType type, size_t client_id, size_t value) {
    switch (type) {
      case AccountType::debit:
        return std::make_shared<DebitBankAccount>(client_id, value, debit_percent_);
        break;
      case AccountType::credit:
        return std::make_shared<CreditBankAccount>(client_id, value, credit_limit_, credit_commission_);
        break;
      case AccountType::deposit:
        return std::make_shared<DepositBankAccount>(client_id, value, GetCurrentTimestamp());
        break;
      default:
        return std::make_shared<DebitBankAccount>(client_id, value, debit_percent_);
        break;
    }
  } 
  
  ClientStorage& Bank::GetClients() {
    return clients_;
  }
}