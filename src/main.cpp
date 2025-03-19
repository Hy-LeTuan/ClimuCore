#include <glad/glad.h>
#include <GL/gl.h>
#include <GLFW/glfw3.h>
#include <iostream>

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
    if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS) {
        glfwSetWindowShouldClose(window, true);
    }
    return;
}

int main() {
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

    float vertices[] = {-0.5f, -0.5f, 0.0f, 0.5f, -0.5f,
                        0.0f,  0.0f,  0.5f, 0.0f};
    unsigned int VBO;
    glGenBuffers(1, &VBO);
    std::cout << "VBO is: " << VBO << std::endl;
    glBindBuffer(GL_ARRAY_BUFFER, VBO);

    // any call to GL_ARRAY_BUFFER will now refer to VBO
    // copy vertices data to current bound buffer, which is VBO
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    while (!glfwWindowShouldClose(window)) {
        processInput(window);

        glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    glfwTerminate();
    return 0;
}
