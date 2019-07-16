int loop_i = 20;
int loop_j = 200;

int Y_AXIS = 1;
int X_AXIS = 2;
  
void setup(){
  
  size(600, 600, P3D);
  
}

void draw(){

  //background(0);
  setGradient(0, 0, width, height, color(0), color(25), Y_AXIS);
  
  fill(0, 255, 255);
  rect(0, 0, width, height);
  
  translate(0, 120, 50);
  rotateX(.7);
  
  float x = 0;
  float y = 0;
  float bx = 0;
  float by = 0;
  
  for(int i = 0; i < loop_i; i++){
    
    float ir = i / float(loop_i);
    
    float gradient1 = map(i, 0, loop_i, 0, 255);
    
    for(int j = 0; j < loop_j; j++){
      
      float jr = j / float(loop_j);
    
      x = width * noise(ir * jr + frameCount * .01);
      y = height * jr;
      
      float gradient2 = map(y * jr, 0, loop_j, 0, 255);
      
      // color
      stroke(gradient2, 0, gradient1, gradient1);
      
      // mono
      //stroke(gradient2 + 25, gradient1);
      
      strokeWeight(3);
      
      //line(x, y, bx, by);
      
      point(x, y);
      point(bx, by);
      
      bx = x;
      by = y;
      
    }
    
  }
  
}

void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {
  noFill();
  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }  
  else if (axis == X_AXIS) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
}
