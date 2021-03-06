#version 310 es
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif

layout(std140, binding = 0) uniform UBO
{
  uniform mat4 MatWorldViewProjection;
}
g_ubo;

layout(location = 0) in vec3 VertexPosition;
layout(location = 1) in vec4 VertexColor;

layout(location = 0) out vec4 v_VertexColor;

void main()
{
  gl_Position = g_ubo.MatWorldViewProjection * vec4(VertexPosition, 1.0);
  v_VertexColor = VertexColor;
}
