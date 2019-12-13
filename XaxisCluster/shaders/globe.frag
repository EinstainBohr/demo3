in vec3 v_color;
in vec2 v_uv;
in vec2 v_uv_tiled;
in vec2 v_uv_fitted;

vec4 finalOutput;

void main() {
    vec4 splatPoint = texture(pointmap, v_uv_tiled);
    vec4 splatGrid = texture(gridmap, v_uv_tiled);
    vec4 splatLine = texture(linemap, v_uv_fitted);
    vec4 splatLaneBase = texture(lanebasemap, v_uv_fitted);
    vec4 splatCenterMask = texture(centermaskmap, v_uv_fitted);
    vec4 splatLeftMask = texture(leftmaskmap, v_uv_fitted);
    vec4 splatRightMask = texture(rightmaskmap, v_uv_fitted);
    vec4 splatMask = texture(maskmap, v_uv);
    vec4 splatGradient = texture(gradientmap, v_uv);

    vec4 centerMask = vec4((splatLaneBase.rgb * v_color.b) * (splatCenterMask.b * centerpos), 1.0);
    vec4 rightMask = vec4((splatLaneBase.rgb * v_color.b) * (splatLeftMask.b * leftpos), 1.0);
    vec4 leftMask = vec4((splatLaneBase.rgb * v_color.b) * (splatRightMask.b * rightpos), 1.0);

    finalOutput = vec4(splatGrid.rgb, 1.0) * splatMask.r;
    finalOutput += vec4(vec3((splatLine.rgb + splatGradient.rgb) * v_color.b), 1.0);
    finalOutput += vec4(vec3((splatPoint.rgb + splatGradient.rgb) * v_color.r * 2.0), 1.0) * splatMask.r * 2.0;
    finalOutput += centerMask;
    finalOutput += rightMask;
    finalOutput += leftMask;

    fragOutput = finalOutput;
}
