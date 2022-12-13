#pragma once

#include <vector>
#include "Transaction.hpp"
#include "Bank.hpp"

namespace bs {

class TransactionHistory {
public:
  void SaveTransaction(Transaction transaction);

  void GetTransactionInfo(size_t id);
  
  void SetUnsuccess(size_t id);
private:
  std::vector<Transaction> transactions_;
};

}
