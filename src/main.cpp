#include "glm/ext/matrix_transform.hpp"
#include <cmath>
#include <glad/glad.h>
#include <GL/gl.h>
#include <GLFW/glfw3.h>
#include <iostream>
#include <stb_image.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

#include <utils/log_utils.h>
#include <shader_s.h>

const int WIDTH = 800;
const int HEIGHT = 600;

// callback functions are snake_case
void framebuffer_size_callback(GLFWwindow *window, int width, int height) {
    glViewport(0, 0, width, height);
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
    if (Log::err_log(window == NULL, "Failed to create GLFW window")) {
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
        -0.5f, -0.5f, 1.0f, // bottom left
        0.5f,  -0.5f, 1.0f, // bottom right
        0.5f,  0.5f,  1.0f, // top right
        -0.5f, 0.5f,  1.0f, // top left
    };

    unsigned int indices[] = {
        0, 1, 2, // first triangle
        2, 3, 0  // second triangle
    };

    unsigned int EBO, VBO;
    unsigned int VAO;

    glGenBuffers(1, &EBO);
    glGenBuffers(1, &VBO);
    glGenVertexArrays(1, &VAO);

    glBindVertexArray(VAO);

    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices,
                 GL_STATIC_DRAW);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float),
                          (void *)0);
    glEnableVertexAttribArray(0);

    Shader::Shader shader =
        Shader::Shader("../src/assets/shaders/vertex_shader.vert",
                       "../src/assets/shaders/fragment_shader.frag");

    shader.use();

    glm::vec3 translateAmount = glm::vec3(0.05f, 0.0f, 0.0f);
    glm::mat4 identity = glm::mat4(1.0f);
    glm::mat4 translate = glm::translate(identity, translateAmount);

    glUniformMatrix4fv(glGetUniformLocation(shader.ID, "translate"), 1,
                       GL_FALSE, glm::value_ptr(translate));

    float deltaTime = 0.0f;
    float lastFrame = 0.0f;

    while (!glfwWindowShouldClose(window)) {
        processInput(window);

        // clear colors
        glClearColor(30.0 / 255, 30.0 / 255, 30.0 / 255, 1);
        glClear(GL_COLOR_BUFFER_BIT);

        // render
        float currentFrame = glfwGetTime();
        deltaTime = currentFrame - lastFrame;
        lastFrame = currentFrame;

        glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);

        // swap buffer
        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    glDeleteBuffers(1, &VBO);
    glDeleteBuffers(1, &EBO);
    glDeleteBuffers(1, &VAO);

    glfwTerminate();

    return 0;
}
