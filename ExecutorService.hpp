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
    if (command == commands::kFillClient) {
      FillClient(in, out);
    }
    if (command == commands::kListClient) {
      ListClient(in, out);
    }
    if (command == commands::kWithdraw) {
      Withdraw(in, out);
    }
    if (command == commands::kTopUp) {
      TopUp(in, out);
    }
    if (command == commands::kTransfer) {
      Transfer(in, out);
    }
    if (command == commands::kUndo) {
      Undo(in, out);
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
    out << "Put bank name:" << std::endl;
    std::string bank;
    std::cin >> bank;
    out << "Put client name:" << std::endl;
    std::string name;
    in >> name;
    out << "Put client last name:" << std::endl;
    std::string last_name;
    in >> last_name;
    system_.CreateClient(bank, name, last_name);
    FillClient(in, out);
  }

  void FillClient(std::istream& in, std::ostream& out) {
    out << "Put address:" << std::endl;
    std::string address;
    in >> address;
    std::optional<std::string> addr;
    if (!address.empty()) {
      addr.emplace(std::move(address));
    }
    out << "Put passport:" << std::endl;
    std::string passport;
    in >> passport;
    std::optional<std::string> pass;
    if (!passport.empty()) {
      pass.emplace(std::move(passport));
    }
  }

  void ListClient(std::istream& in, std::ostream& out) {
    std::string bank;
    out << "Put bank name: " << std::endl;
    in >> bank;
    auto& clients = system_.GetBankStorage().GetBank(bank).GetClients();
    for (auto&& client : clients) {
      out << client;
    }
  }
  
  void Withdraw(std::istream& in, std::ostream& out) {
    std::string bank;
    in >> bank;
    size_t uid;
    int64_t amount;
    in >> uid >> amount;
    system_.MakeWithdraw(bank, uid, amount);
    out << "Success!";
  }

  void TopUp(std::istream& in, std::ostream& out) {
    std::string bank;
    in >> bank;
    size_t uid;
    int64_t amount;
    in >> uid >> amount;
    system_.MakeTopUp(bank, uid, amount);
    out << "Success!";
  }

  void Transfer(std::istream& in, std::ostream& out) {
    std::string bank_from, bank_to;
    in >> bank_from >> bank_to;
    size_t uid1, uid2;
    int64_t amount;
    in >> uid1 >> uid2 >> amount;
    system_.MakeTransfer(bank_from, uid1, bank_to, uid2, amount);
  }

  void Undo(std::istream& in, std::ostream& out) {
    out << "Put transaction id";
    size_t t_id;
    in >> t_id;
    system_.UndoTransfer(t_id);
  }

  void BankList(std::ostream& out) {
    out << "Bank List:" << std::endl;
    for (auto&&[name, bank_ptr] : system_.GetBankStorage()) {
      out << *bank_ptr << std::endl;
    }
  }

  bs::PaymentSystemFacade system_;
};

}
