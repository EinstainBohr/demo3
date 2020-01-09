attribute vec3 attr_pos;
attribute vec2 attr_uv0;
attribute vec3 attr_color;

uniform mat4 modelViewProjection;

varying vec3 v_color;
varying vec2 v_uv;
varying vec2 v_uv_tiled;
varying vec2 v_uv_fitted;

void main() {
    v_uv = attr_uv0;
    v_uv_fitted = vec2(attr_uv0.x * 9.0, (attr_uv0.y + linepos) * 15.0);
    v_uv_tiled = vec2(attr_uv0.x * 120.0, attr_uv0.y * 120.0);

    v_color = attr_color;
    gl_Position = modelViewProjection * vec4(attr_pos, 1.0);
}
