void main() {
    vec2 uv = gl_FragCoord.xy / iResolution.xy;
    uv -= 0.5;

    // Pulsating size
    float size = 0.1 + cos(iTime) * 0.05;

    // Circle Shape
    float d = length(uv);
    float circle = smoothstep(size, size + 0.01, d);

    gl_FragColor = vec4(vec3(1.0 - circle), 1.0);
}
