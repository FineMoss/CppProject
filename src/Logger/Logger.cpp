#include <Logger.hpp>

#include <iostream>
#include <sstream>
#include <iomanip>
#include <chrono>

Logger &Logger::getInstance()
{
    static Logger instance;
    return instance;
}

void Logger::log(LogLevel level, const std::string &message)
{
    std::ostringstream logStream;
    logStream << getTimestamp() << " ";
    logStream << "[" << logLevelToString(level) << "] ";
    logStream << message << std::endl;
    std::string logEntry = logStream.str();
    std::cout << logEntry;
}

std::string Logger::getTimestamp()
{
    auto now = std::chrono::system_clock::now();
    auto ms = std::chrono::duration_cast<std::chrono::milliseconds>(now.time_since_epoch());
    auto time = std::chrono::system_clock::to_time_t(now);
    std::tm time_tm = *std::localtime(&time);
    std::ostringstream timeString;
    timeString << std::put_time(&time_tm, "%Y-%m-%d %H:%M:%S");
    timeString << '.' << std::setfill('0') << std::setw(3) << ms.count() % 1000;
    return timeString.str();
}

std::string Logger::logLevelToString(LogLevel level)
{
    switch (level)
    {
    case LogLevel::INFO:
        return "INFO";
    case LogLevel::WARNING:
        return "WARNING";
    case LogLevel::ERROR:
        return "ERROR";
    default:
        return "UNKNOWN";
    }
}
