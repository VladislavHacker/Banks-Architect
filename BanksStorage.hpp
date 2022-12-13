#ifndef BANKS_STORAGE
#define BANKS_STORAGE


#include <unordered_map>
#include <memory>

#include "Bank.hpp"
#include "Transaction.hpp"

namespace bs {
  
class BanksStorage {
 public:
  BanksStorage() = default;

  bool CreateBank(
    std::string name, 
    size_t credit_percent, 
    size_t deposit_percent
  );

  Bank& GetBank(const std::string& name) {
    return *banks_[name];
  }
  auto begin() {
    return banks_.begin();
  }

  auto end() {
    return banks_.end();
  }
 private:
  std::unordered_map<std::string, std::shared_ptr<Bank>> banks_;
};

}

#endif