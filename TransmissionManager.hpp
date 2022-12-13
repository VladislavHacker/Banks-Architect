#pragma once

#include "TransactionHistory.hpp"
#include "Bank.hpp"

namespace bs {
  class TransmissionManager {
  public:
    TransmissionManager() = default;
    bool TransferMoney(Endpoint from, Endpoint to);
  };
}
