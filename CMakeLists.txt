cmake_minimum_required(VERSION 3.21)
project(C++)

set(CMAKE_CXX_STANDARD 20)

add_executable(BankSystem 
                main.cpp 
                PaymentSystemFacade.cpp 
                TransmissionManager.cpp 
                TransactionHistory.cpp
                PercentManager.cpp
                ClientStorage.cpp
                BanksStorage.cpp
                Bank.cpp
                Client.cpp
                helpers.cpp)

