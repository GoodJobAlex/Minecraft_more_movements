#version 150
in vec4 Position;

uniform vec2 InSize;
uniform vec2 OutSize;
uniform vec2 ScreenSize;

uniform sampler2D ControlSampler;

out vec2 texCoord;

void main(){

    // same as blit_copy but you can change if u want
    float x = -1.0; 
    float y = -1.0;

    if (Position.x > 0.001){
        x = 1.0;
    }
    if (Position.y > 0.001){
        y = 1.0;
    }

    gl_Position = vec4(x, y, 0.2, 1.0);
    vec2 uv = Position.xy / OutSize;
    float RotDeg = 0.1134464014;
    float resx ;
    float resy ;
    // Channel #1
    vec4 control_color = texelFetch(ControlSampler, ivec2(0, 1), 0);
    switch(int(control_color.b * 255.)) {
        case 193:
            uv-=0.5;
            resx = cos(RotDeg)*uv.x - sin(RotDeg) * uv.y;
            resy = sin(RotDeg)*uv.x + cos(RotDeg)*uv.y;
            uv.x = resx;
            uv.y = resy;
            uv+=0.5;
            break;
        case 194:
            uv-=0.5;
            resx = cos(-RotDeg)*uv.x - sin(-RotDeg) * uv.y;
            resy = sin(-RotDeg)*uv.x + cos(-RotDeg)*uv.y;
            uv.x = resx;
            uv.y = resy;
            uv+=0.5;
            break;


    }


    texCoord=uv.xy;
}
