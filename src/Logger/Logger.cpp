#include <Logger.hpp>

#include <iostream>

Logger::Logger()
{
}

void Logger::log(std::string str)
{
    std::cout << str << std::endl;
}

// void Logger::logInfo(std::string str)
// {
// }
