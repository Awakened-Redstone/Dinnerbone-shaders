#version 150

in vec4 Position;

uniform mat4 ProjMat;
uniform vec2 OutSize;

out vec2 texCoord;

void main() {
    vec4 outPos = ProjMat * vec4(Position.xy, 0.0, 1.0);
    gl_Position = vec4(outPos.xy, 0.2, 1.0);
    texCoord = vec2((Position.x / OutSize.x), 1 - (Position.y / OutSize.y)); //Invert only y azis
    //texCoord = vec2(1 - (Position.x / OutSize.x), (Position.y / OutSize.y)); //Invert only x azis
    //texCoord = 1 - (Position.xy / OutSize); //Invert x and y axis
    //texCoord = Position.xy / OutSize; //Vanilla (for reference)
}
