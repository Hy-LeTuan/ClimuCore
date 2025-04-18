#ifndef SHADER_H
#define SHADER_H

#include <string>

namespace Shader {

class Shader {
  public:
    unsigned int ID;
    Shader(const char *vertexPath, const char *fragmentPath);
    void use();
    void setBool(const std::string &name, bool value) const;
    void setInt(const std::string &name, int value) const;
    void setFloat(const std::string &name, float value) const;
    void setVec4(const std::string &name, const float (&values)[4]) const;

  private:
    void checkCompileErrors(unsigned int shader, std::string type);
};

} // namespace Shader

#endif
