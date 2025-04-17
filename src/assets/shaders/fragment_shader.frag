#version 460 core

out vec4 FragColor;

// in vec4 vertexColor;
// in vec2 TexCoord;

// uniform sampler2D texture1;
// uniform sampler2D texture2;

void main() 
{
	// FragColor = mix(texture(texture1, TexCoord), texture(texture2, TexCoord), 0.2);
    FragColor = vec4(0.63f, 0.36f, 0.36f, 1.0f);
}
