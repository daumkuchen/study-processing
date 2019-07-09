import netP5.*;
import oscP5.*;

int x = 640;
int y = 60;
int r = 90;
int n = 7;
int rs = 0;

void drawCircle(float x, float y, int radius, int num){
  float value = 255 * num / 6.;
  fill(value, 153);
  ellipse(x, y, radius * 2, radius * 2);
  if(num > 0){
    num = num - 1;
    int branches = int(random(2, 6));
    for(int i = 0; i < branches; i++){
      float a = random(0, TWO_PI);
      float newx = x + cos(a) * 30. * num;
      float newy = y + sin(a) * 9. * num;
      drawCircle(newx, newy, radius / 2, num);
    }
  }
}

void setup(){
  
  size(1280, 120);
  noStroke();
  frameRate(2);
  
}

void draw(){
  
  background(0);
  drawCircle(x, y, r, n);
  
  saveFrame("render/####.png");
  
};
