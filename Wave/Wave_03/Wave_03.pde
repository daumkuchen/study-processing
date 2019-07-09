float curve_width = 10.;
float curve_thickness = 10.;
float angle_offset = .9;

void setup(){
  
  size(1200, 600);
  
}

void draw(){
  
  background(255);
  
  float angle_increment = map(mouseY, 0, height, 0., .2);
  float angle_a = 0.;
  float angle_b = angle_a + angle_offset;
  
  for(int mx = 0; mx < width; mx += curve_width * 3){
    
    float gray = map(mx, 0, width, 0, 255);
    noStroke();
    fill(gray);
    beginShape(QUAD_STRIP);
    for(int y = 0; y <= height; y += 10){
      
      float x1 = mx + (sin(angle_a) * curve_width);
      float x2 = mx + (sin(angle_b) * curve_width);
      vertex(x1, y);
      vertex(x2 + curve_thickness, y);
      angle_a += angle_increment;
      angle_b = angle_a + angle_offset;
      
    }
    endShape();
    
  }
  
}
