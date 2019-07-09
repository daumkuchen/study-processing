float curve_width = 30.;
float curve_thickness = 10.;

void setup(){
  
  size(200, 600);
  noFill();
  stroke(0);
  
}

void draw(){
  
  background(255);
  
  float angle_increment = map(mouseY, 0, height, 0., .1);
  float angle = 0.;
  
  beginShape(QUAD_STRIP);
  for(int y = 0; y < height; y += 10){
    float x = width / 2 + (sin(angle) * curve_width);
    vertex(x, y);
    vertex(x + curve_thickness, y);
    angle += angle_increment;
  }
  endShape();
  
}
