precision mediump float;

varying vec3 v_color;
varying vec2 v_uv;
varying vec2 v_uv_tiled;
varying vec2 v_uv_fitted;

void main() {
    vec4 splatPoint = texture(pointmap, v_uv_tiled);
    vec4 splatGrid = texture(gridmap, v_uv_tiled);
    vec4 splatLine = texture(linemap, v_uv_fitted);
    vec4 splatMask = texture(maskmap, v_uv);

    vec4 finalOutput = vec4(splatGrid.rgb * v_color.b, 1.0) * splatMask.r;
    finalOutput += vec4(splatLine.rgb * 2.0 * v_color.b, 1.0);
    finalOutput += vec4(splatPoint.rgb * v_color.r * 2.0, 1.0) * splatMask.r * 2.0;

    gl_FragColor = finalOutput * basecolor;
}


