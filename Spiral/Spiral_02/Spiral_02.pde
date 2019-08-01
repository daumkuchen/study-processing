PVector[] vec;
float gap = .01;

boolean display_spiral = true;

void setup(){
  
  size(500, 500);
  vec = new PVector[4];
  vec[0] = new PVector(0,     0);
  vec[1] = new PVector(width, 0);
  vec[2] = new PVector(width, height);
  vec[3] = new PVector(0,     height);
  
  drawSpiral(display_spiral);
  
}

void draw(){
  
  stroke(0);
  strokeWeight(1);
 
  drawSquare(vec);
  vec = getVector(vec);
  
}
