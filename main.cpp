#include <iostream>

#include "ExecutorService.hpp"


int main() {
  bs::PaymentSystemFacade system;
  exec::ExecutorService service(system);

  while (true) {
    std::cout << "Put command:" <<std::endl;
    service.Execute(std::cin, std::cout);
  }
}