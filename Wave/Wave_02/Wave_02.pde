float curve_width = 30.;
float curve_thickness = 50.;
float angle_offset = .9;

void setup(){
  
  size(200, 600);
  noFill();
  stroke(0);
  
}

void draw(){
  
  background(255);
  
  float angle_increment = map(mouseY, 0, height, 0., .1);
  float angle_a = 0.;
  float angle_b = angle_a + angle_offset;
  
  beginShape(QUAD_STRIP);
  for(int y = 0; y <= height; y += 10){
    
    float x1 = width / 2 + (sin(angle_a) * curve_width);
    float x2 = width / 2 + (sin(angle_b) * curve_width);
    vertex(x1, y);
    vertex(x2 + curve_thickness, y);
    angle_a += angle_increment;
    angle_b = angle_a + angle_offset;
    
  }
  endShape();
  
}
