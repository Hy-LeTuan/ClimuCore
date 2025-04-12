#version 460 core

in vec4 vertexColor;
in vec2 TexCoord;

out vec4 FragColor;

uniform sampler2D ourTexture;

void main() 
{
    vec4 texColor = texture(ourTexture, TexCoord);
    FragColor = texColor * vertexColor;
}
