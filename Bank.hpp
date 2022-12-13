#pragma once

#include <vector>
#include <string>
#include <memory>
#include <iostream>

#include "BankAccount.hpp"
#include "ClientStorage.hpp"

namespace bs {

class Bank {
  public:
    Bank(const Bank& other) = default;
    Bank& operator=(const Bank& other) = default;
    Bank(
      std::string name, 
      size_t credit_commission, 
      double debit_percent
    ) : name_(std::move(name)), 
        credit_commission_(credit_commission), 
        debit_percent_(debit_percent) {}

    std::shared_ptr<BankAccount> AccountFactory(AccountType type, size_t client, size_t value);

    BankAccount& GetBankAccount(size_t id) {
      return *accounts_[id];
    }

    size_t CreateClient(
      std::string name, 
      std::string last_name
    ) {
      return clients_.AddClient(Client(name, last_name));
    }

    void FillClientData(
      size_t client, 
      std::optional<std::string> address, 
      std::optional<std::string> passport) {
      clients_.GetClient(client).FillAdditionalData(address, passport);
    }

    ClientStorage& GetClients();


    friend std::ostream& operator<<(std::ostream& out, const Bank& bank) {
      std::cout << "Bank name: " << bank.name_ << " " << std::endl;
      std::cout << "Client cnt: " << bank.clients_.Size() << " " << std::endl;
      std::cout << "Credit commission:" << bank.credit_commission_ << " " << std::endl;
      std::cout << "Debit percent:" << bank.credit_commission_ << " " << std::endl;
      return out;
    }

  private:
    std::string name_;
    ClientStorage clients_;
    size_t credit_commission_;
    size_t credit_limit_{200000};
    double debit_percent_;
    std::vector<std::shared_ptr<BankAccount>> accounts_;
};



}
