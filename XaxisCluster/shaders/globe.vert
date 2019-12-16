in vec3 attr_pos;
in vec2 attr_uv0;
in vec3 attr_color;

uniform mat4 modelViewProjection;

out vec2 v_uv;
out vec2 v_uv_tiled;
out vec2 v_uv_fitted;

out vec3 v_color;

void main() {
    v_uv = attr_uv0;
    v_uv_fitted = vec2(attr_uv0.x * 9.0, (attr_uv0.y + linepos) * 15.0);
    v_uv_tiled = vec2(attr_uv0.x * 120.0, attr_uv0.y * 120.0);

    v_color = attr_color;
    gl_Position = modelViewProjection * vec4(attr_pos, 1.0);
}
