import netP5.*;
import oscP5.*;

int x = 50;
int y = 100;
int a = 35;
int n = 3;

/**
 * old version
 */
//void drawT(int posx, int posy, int apex){
//  line(posx, posy, posx, posy - apex);
//  line(posx - (apex / 2), posy - apex,
//       posx + (apex / 2), posy - apex
//  );
//}

void drawT(int x, int y, int apex, int num){
  line(x, y, x, y - apex);
  line(x - apex, y - apex, x + apex, y -apex);
  if(num > 0){
    drawT(x - apex, y - apex, apex / 2, num - 1);
    drawT(x + apex, y - apex, apex / 2, num - 1);
  }
}

void setup(){
  
  size(100, 100);
  noLoop();
  
}

void draw(){
  
  background(125);
  drawT(x, y, a, n);
  
};
