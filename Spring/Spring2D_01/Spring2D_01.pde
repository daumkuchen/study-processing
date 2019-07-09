Spring2D s1, s2;
float mass = 2.;
float gravity = 5.;

void setup(){
  
  size(100, 100);
  fill(0);
  
  s1 = new Spring2D(0., width / 2, mass, gravity);
  s2 = new Spring2D(0., width / 2, mass, gravity);
  
}

void draw(){
  
  background(204);
  
  s1.update(mouseX, mouseY);
  s1.display(mouseX, mouseY);
  
  s2.update(s1.x, s1.y);
  s2.display(s1.x, s1.y);
  
}
