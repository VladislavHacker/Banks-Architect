#pragma once

#include <iostream>


struct Endpoint {
  size_t bank;
  size_t client;
};

struct Transaction {
    size_t timestamp;
    Endpoint from;
    Endpoint to;
    bool status;
};