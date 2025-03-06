void main() {
    vec2 uv = gl_FragCoord.xy / iResolution.xy;

    // Center the coordinates
    uv -= 0.5;

    // Bouncing motion using sin(iTime)
    float yoffset = sin(iTime) * 0.3;

    // Circle equation (distance-based)
    float d = length(uv - vec2(0.0, yoffset));

    // Draw the ball (white circle)
    vec3 color = d < 0.1 ? vec3(1.0) : vec3(0.0);

    gl_FragColor = vec4(color, 1.0);
}
