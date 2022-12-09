varying vec3 vColor;

void main() {

    // // Disc
    // float strength = step(0.5, 1.0 - distance(gl_PointCoord, vec2(0.5)));

    // // Diffuse Point Pattern
    // float strength = 1.0 - (distance(gl_PointCoord, vec2(0.5)) * 2.0);
    
    // Light Point Pattern
    float strength = 1.0 - distance(gl_PointCoord, vec2(0.5));
    strength = pow(strength, 10.0);

    // Final
    vec3 color = mix(vec3(0.0), vColor, strength);
    gl_FragColor = vec4(color, 1.0);
}