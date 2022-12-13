#include "BanksStorage.hpp"

#include <vector>

namespace bs {
  bool BanksStorage::CreateBank(
    std::string name, 
    size_t credit_percent, 
    size_t deposit_percent) {
      if (banks_.find(name) != banks_.end()) {
        return false;
      }
      banks_[name] = std::make_shared<Bank>(name, credit_percent, deposit_percent);
      return true;
    }
}