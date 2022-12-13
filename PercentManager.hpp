#ifndef PERCENT_MANAGER
#define PERCENT_MANAGER

#include "BankAccount.hpp"

namespace bs {
class PercentManager {
  public:
    PercentManager() = default;
    void CalculatePercent(BankAccount& account, size_t timestamp) {
      account.CalculateToDate(timestamp);
    }
  private:

};

}

#endif