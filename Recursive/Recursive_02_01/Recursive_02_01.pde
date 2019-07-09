import netP5.*;
import oscP5.*;

int x = 360 + (360 / 4);
int r = 720;
int n = 6;

void drawCircle(int x, int radius, int num){
  float tt = 185 * num / 4.;
  fill(tt);
  ellipse(x, height / 2, radius * 2, radius * 2);
  if(num > 0){
    drawCircle(x - radius / 2, radius / 2, num - 1);
    drawCircle(x + radius / 2, radius / 2, num - 1);
  }
}

void setup(){
  
  size(1280, 720);
  noStroke();
  
}

void draw(){
  
  background(0);
  drawCircle(x, r, n);
  
};

void mouseMoved(){
  //x = mouseX;
}

void mousePressed(){
  
   saveFrame("render/####.png");
   
}
