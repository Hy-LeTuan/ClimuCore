#include <utils/log_utils.h>
#include <iostream>

namespace Log {
int err_log(bool condition, const char *log_message) {
    if (condition) {
        std::cout << log_message << std::endl;
        return -1;
    }
    return 0;
}

} // namespace Log
