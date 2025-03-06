void main() {
    vec2 uv = gl_FragCoord.xy / iResolution.xy;
    uv -= 0.5;

    // Reflection matrix
    mat2 reflectY = mat2(1.0, 0.0,
                         0.0, -1.0);

    // Apply reflection
    vec2 mirroredUV = reflectY * uv;

    // Gradient color effect
    vec3 color = vec3(mirroredUV.y + 0.5);

    gl_FragColor = vec4(color, 1.0);
}
