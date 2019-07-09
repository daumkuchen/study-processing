Blade diagonal;

void setup(){
  
  size(700, 100);
  noSmooth();
  diagonal = new Blade(30, 80);
  
}

void draw(){
  
  diagonal.grow();
  
}

void mouseMoved(){
  
  diagonal.seed(mouseX, mouseY);
  
}
