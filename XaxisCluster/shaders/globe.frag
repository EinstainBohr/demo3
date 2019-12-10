out vec4 fragColor;

in vec3 v_color;
in vec2 v_uv;
in vec2 v_uv2;

void main() {
    vec4 splatPoint = texture(pointmap, vec2(v_uv.x * 120.0, v_uv.y * 120.0));
    vec4 splatGrid = texture(gridmap, vec2(v_uv.x * 120.0, v_uv.y * 120.0));
    vec4 splatLine = texture(linemap, vec2(v_uv2.x * 9.0, v_uv2.y * 15.0));
    vec4 splatMask = texture(maskmap, v_uv);

    vec4 finalOutput = vec4(splatGrid.rgb * v_color.b, 1.0) * splatMask.r;
    finalOutput += vec4(splatLine.rgb * 2.0 * v_color.b, 1.0);
    finalOutput += vec4(splatPoint.rgb * v_color.r * 2.0, 1.0) * splatMask.r * 2.0;

    fragColor = finalOutput * basecolor;
}


