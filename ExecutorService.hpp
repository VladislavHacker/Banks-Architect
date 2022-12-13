#pragma once

#include <iostream>
#include <string_view>

#include "PaymentSystemFacade.hpp"

namespace exec {

namespace commands {
  static constexpr std::string_view kCreateBank = "create_bank";
  static constexpr std::string_view kBankList = "bank_list";

  static constexpr std::string_view kCreateClient = "create_client";
  static constexpr std::string_view kFillClient = "fill_client";
  static constexpr std::string_view kListClient = "list_client";

  static constexpr std::string_view kWithdraw = "withdraw";
  static constexpr std::string_view kTopUp = "top_up";
  static constexpr std::string_view kTransfer = "transfer";

  static constexpr std::string_view kUndo = "undo";

};

class ExecutorService {
public:
  ExecutorService(bs::PaymentSystemFacade system) 
    : system_(std::move(system)) {
  }

  void Execute(std::istream& in, std::ostream& out) {
    std::string command;
    in >> command;
    if (command == commands::kCreateBank) {
      CreateBank(in, out);
    } 
    if (command == commands::kCreateClient) {
      CreateClient(in, out);
    } 
    if (command == commands::kBankList) {
      BankList(out);
    } 
  }

private:
  void CreateBank(std::istream& in, std::ostream& out) {
    std::cout << "Put bank Name:" << std::endl;
    std::string name;
    in >> name;
    size_t credit_commission;
    std::cout << "Put fixed credit commission:" << std::endl;
    std::cin >> credit_commission;
    std::cout << "Put deposit percent:" << std::endl;
    double deposit_percent;
    std::cin >> deposit_percent;
    system_.CreateBank(name, credit_commission, deposit_percent);
  }

  void CreateClient(std::istream& in, std::ostream& out) {
    std::cout << "Put bank name:" << std::endl;
    std::string bank;
    std::cin >> bank;
    std::cout << "Put client name:" << std::endl;
    std::string name;
    in >> name;
    std::cout << "Put client last name:" << std::endl;
    std::string last_name;
    in >> last_name;
    system_.CreateClient(bank, name, last_name);
    FillClient(in, out);
  }

  void FillClient(std::istream& in, std::ostream& out) {
    std::cout << "Put address:" << std::endl;
    std::string address;
    in >> address;
    std::optional<std::string> addr;
    if (!address.empty()) {
      addr.emplace(std::move(address));
    }
    std::cout << "Put passport:" << std::endl;
    std::string passport;
    in >> passport;
    std::optional<std::string> pass;
    if (!passport.empty()) {
      pass.emplace(std::move(passport));
    }
  }
  
  void BankList(std::ostream& out) {
    std::cout << "Bank List:" << std::endl;
    for (auto&&[name, bank_ptr] : system_.GetBankStorage()) {
      out << *bank_ptr << std::endl;
    }
    
  }

  bs::PaymentSystemFacade system_;
};

}
