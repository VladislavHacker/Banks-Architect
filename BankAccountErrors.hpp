#pragma once

#include <exception>

class DepositTimeNotFinished : public std::runtime_error {
};


class NotEnoughMoney : public std::runtime_error {
};