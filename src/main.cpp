#include <cmath>
#include <filesystem>
#include <glad/glad.h>
#include <GL/gl.h>
#include <GLFW/glfw3.h>
#include <iostream>
#include <numbers>

#include <shader_s.h>

const int WIDTH = 800;
const int HEIGHT = 600;

// callback functions are snake_case
void framebuffer_size_callback(GLFWwindow *window, int width, int height) {
    glViewport(0, 0, width, height);
}

int err_log(bool condition, const char *log_message) {
    if (condition) {
        std::cout << log_message << std::endl;
        return -1;
    }
    return 0;
}

// normal functions use camelCase
void processInput(GLFWwindow *window) {
    if (glfwGetKey(window, GLFW_KEY_Q) == GLFW_PRESS) {
        glfwSetWindowShouldClose(window, true);
    }
    return;
}

int main() {
    int success;
    char infoLog[512];

    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 6);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    GLFWwindow *window =
        glfwCreateWindow(WIDTH, HEIGHT, "LearnOPENGL", NULL, NULL);
    if (err_log(window == NULL, "Failed to create GLFW window")) {
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);

    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)) {
        std::cout << "Failed to initialize GLAD" << std::endl;
        return -1;
    }
    glViewport(0, 0, WIDTH, HEIGHT);
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);

    float vertices[] = {
        // positions // colors
        0.5f,  -0.5f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, // bottom right
        -0.5f, -0.5f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, // bottom left
        0.0f,  0.5f,  0.0f, 0.0f, 0.0f, 1.0f, 1.0f  // top
    };

    float vertices2[] = {
        -0.5f, 0.0f, 0.0f, // second triangle corner
        0.0f,  0.5f, 0.0f, // second triangle corner
        0.5f,  0.0f, 0.0f  // second triangle corner
    };

    unsigned int VBO;
    glGenBuffers(1, &VBO);

    unsigned int VBO2;
    glGenBuffers(1, &VBO2);

    unsigned int VAO;
    glGenVertexArrays(1, &VAO);

    unsigned int VAO2;
    glGenVertexArrays(1, &VAO2);

    Shader::Shader standardShader =
        Shader::Shader("../src/assets/shaders/vertex_shader.vert",
                       "../src/assets/shaders/fragment_shader.frag");

    Shader::Shader uniformShader =
        Shader::Shader("../src/assets/shaders/vertex_shader.vert",
                       "../src/assets/shaders/fragment_shader_uniform.frag");

    while (!glfwWindowShouldClose(window)) {
        processInput(window);

        // clear
        glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        // render
        glBindBuffer(GL_ARRAY_BUFFER, VBO);
        glBindVertexArray(VAO);
        glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices,
                     GL_STATIC_DRAW);
        glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 7 * sizeof(float),
                              (void *)0);
        glVertexAttribPointer(1, 4, GL_FLOAT, GL_FALSE, 7 * sizeof(float),
                              (void *)(3 * sizeof(float)));

        glEnableVertexAttribArray(0);
        glEnableVertexAttribArray(1);

        standardShader.use();

        glDrawArrays(GL_TRIANGLES, 0, 3);

        glBindVertexArray(VAO2);
        glBindBuffer(GL_ARRAY_BUFFER, VBO2);
        glBufferData(GL_ARRAY_BUFFER, sizeof(vertices2), vertices2,
                     GL_STATIC_DRAW);
        glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float),
                              (void *)0);
        glEnableVertexAttribArray(0);

        uniformShader.use();

        // compute color
        float timeValue = glfwGetTime();
        float greenValue =
            (std::sin(timeValue * std::numbers::pi / 3) / 2.0f) + 0.5f;
        float redValue =
            (std::sin(timeValue * std::numbers::pi / 6) / 2.0f) + 0.5f;
        float blueValue =
            (std::sin(timeValue * std::numbers::pi / 4) / 2.0f) + 0.5f;

        // set uniform to current color
        uniformShader.setVec4("ourColor",
                              {greenValue, redValue, blueValue, 1.0f});

        glDrawArrays(GL_TRIANGLES, 0, 3);

        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    glfwTerminate();
    return 0;
}
