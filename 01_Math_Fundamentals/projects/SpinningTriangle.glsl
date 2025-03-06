mat2 rotate(float angle) {
    return mat2(cos(angle), -sin(angle),
                sin(angle), cos(angle));
}

void main() {
    vec2 uv = gl_FragCoord.xy / iResolution.xy;
    uv -= 0.5;

    // Rotate triangle
    vec2 p0 = rotate(iTime) * vec2(-0.2, -0.2);
    vec2 p1 = rotate(iTime) * vec2( 0.2, -0.2);
    vec2 p2 = rotate(iTime) * vec2( 0.0,  0.2);

    // Draw triangle
    float d = min(min(length(uv - p0), length(uv - p1)), length(uv - p2));
    float shape = smoothstep(0.02, 0.03, d);

    gl_FragColor = vec4(vec3(1.0 - shape), 1.0);
}
