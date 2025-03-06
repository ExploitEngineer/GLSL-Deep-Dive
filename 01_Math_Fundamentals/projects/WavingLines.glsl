void main() {
    vec2 uv = gl_FragCoord.xy / iResolution.xy;

    // Sine wave pattern
    float wave = sin(uv.x * 20.0 + iTime * 2.0);

    // Threshold to create lines
    float lines = smoothstep(0.4, 0.41, wave);

    gl_FragColor = vec4(vec3(lines), 1.0);
}
