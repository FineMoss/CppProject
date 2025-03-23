#pragma once

#include <string>

enum class LogLevel
{
    INFO,
    WARNING,
    ERROR
};

class Logger
{
public:
    static Logger &getInstance();

    void log(LogLevel level, const std::string &message);

private:
    Logger() = default;
    ~Logger() = default;

    std::string getTimestamp();

    std::string logLevelToString(LogLevel level);
};

#define LOG_INFO(msg) Logger::getInstance().log(LogLevel::INFO, msg)
#define LOG_WARNING(msg) Logger::getInstance().log(LogLevel::WARNING, msg)
#define LOG_ERROR(msg) Logger::getInstance().log(LogLevel::ERROR, msg)
