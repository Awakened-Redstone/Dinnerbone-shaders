#version 150

in vec4 Position;

uniform mat4 ProjMat;
uniform vec2 OutSize;

out vec2 texCoord;

void main() {
    vec4 outPos = ProjMat * vec4(Position.xy, 0.0, 1.0);
    gl_Position = vec4(outPos.xy, 0.2, 1.0);
    texCoord = vec2((Position.xy / OutSize).x, (OutSize - Position.xy / OutSize).y); //Invert only y azis
    //texCoord = vec2((OutSize - Position.xy / OutSize).x, (Position.xy / OutSize).y); //Invert only x axis
    //texCoord = OutSize - (Position.xy / OutSize); //Invert x and y axis
}
