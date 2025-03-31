#include <shader_s.h>

#include <fstream>
#include <string>

namespace Shader {
Shader::Shader(const char *vertexPath, const char *fragmentPath) {
    std::string vertexShaderCode;
    std::string fragmentShaderCode;

    std::ifstream vertexShaderFile;
    std::ifstream fragmentShaderFile;

    vertexShaderFile.exceptions(std::ifstream::failbit | std::ifstream::badbit);
    fragmentShaderFile.exceptions(std::ifstream::failbit |
                                  std::ifstream::badbit);
}

}; // namespace Shader
