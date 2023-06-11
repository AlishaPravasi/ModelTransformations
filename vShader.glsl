#version 300 es
// Vertex shader for Lab 3 - COMP3801 Spring 2021

in vec3 vPosition;           // position of vertex (x, y, z)
in vec3 vColor;              // color of vertex (r, g, b)

uniform mat4 transformMat;   // transform for vertex
      
out vec3 fColor;             // output color to send to fragment shader

void main() {
  gl_Position = transformMat * vec4(vPosition, 1.0); // set vertex position
  fColor = vColor;           // output color to fragment shader
}
