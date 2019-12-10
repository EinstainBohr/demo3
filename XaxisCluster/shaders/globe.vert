in vec3 attr_pos;
in vec2 attr_uv0;
in vec3 attr_color;

uniform mat4 modelViewProjection;

out vec2 v_uv;
out vec2 v_uv2;
out vec3 v_color;

void main() {
    v_uv = attr_uv0;
    v_uv2 = vec2(attr_uv0.x, attr_uv0.y + linepos);
    v_color = attr_color;
    gl_Position = modelViewProjection * vec4(attr_pos, 1.0);
}
