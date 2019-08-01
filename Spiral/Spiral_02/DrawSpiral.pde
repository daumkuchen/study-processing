void drawSpiral(boolean display_spiral){

  if(!display_spiral) return;
  
  float STEP = 2. * PI * .001;
  float b = sqrt(2. * gap * gap - 2. * gap + 1);
  float c = atan(gap / (1. - gap));
  
  PVector O = new PVector(width / 2, height / 2);
  PVector v = new PVector(0, 0);
  v.sub(O);
  
  translate(O.x, O.y);
  stroke(color(255, 0, 0));
  strokeWeight(3);
  
  while(v.mag() > 1){
    PVector next_vec = v.copy();
    next_vec.rotate(STEP);
    next_vec.mult(pow(b, STEP / c));
    
    line(v.x,
         v.y,
         next_vec.x,
         next_vec.y);
    v = next_vec;
    
  }
  
}
