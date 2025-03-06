// this code is for sin & cos practice
/*
void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec2 uv = fragCoord / iResolution.xy; // Normalize coordinates (0 to 1)
    uv -= 0.5; // Center the coordinates

    float t = iTime; // Time variable

    // Change sin and cos values here
    float x = cos(t) * 0.2;  // Side-to-side movement
    float y = sin(t) * 0.2;  // Up-down movement

    vec2 circlePos = vec2(x, y);  // Position of the moving dot

    float dist = length(uv - circlePos); // Distance from the dot
    float dot = smoothstep(0.02, 0.01, dist); // Draw the dot

    fragColor = vec4(vec3(dot), 1.0); // Render dot
}
/*

