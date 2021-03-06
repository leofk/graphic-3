uniform vec3 spherePosition;

out vec3 viewPosition;

out vec3 worldPosition;

out vec3 interpolatedNormal;

void main() {
    
    viewPosition = vec3(inverse(viewMatrix) * vec4(0.0, 0.0, 0.0, 1.0)); // world frame
    
    vec3 modelPosition = vec3(modelMatrix * vec4(position, 1.0)); // world frame

    worldPosition = vec3(modelMatrix * vec4(position, 1.0));  // world frame
    
    interpolatedNormal = normal;

    gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);
}
