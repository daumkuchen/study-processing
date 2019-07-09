int angle = 0;

void setup(){
  
  size(700, 100);
  noStroke();
  fill(0, 102);

}

void draw(){
  
  if(mousePressed == true){
    angle += 10;
    float val = cos(radians(angle)) * 6.;
    for(int a = 0; a < 360; a += 75){
      float off_x = cos(radians(a)) * val;
      float off_y = sin(radians(a)) * val;
      fill(0);
      ellipse(mouseX + off_x, mouseY + off_y, val / 2, val / 2);
    }
    fill(255);
    ellipse(mouseX, mouseY, 2, 2);
  }
  
}
