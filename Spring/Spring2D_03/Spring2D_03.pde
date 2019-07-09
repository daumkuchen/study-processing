FixedSpring s1, s2;
float gravity = 1.2;

void setup(){
  
  size(100, 100);
  fill(0);
  
  float mass = 1.5;
  float spring_length = 40.;
  s1 = new FixedSpring(45, 33, mass, gravity, spring_length);
  s2 = new FixedSpring(55, 66, mass, gravity, spring_length);

}

void draw(){
  
  background(204);
  
  s1.update(s2.x, s2.y);
  s1.display(s2.x, s2.y);
  
  s2.update(s1.x, s1.y);
  s2.display(s1.x, s1.y);
 
  if(mousePressed == true){
    s1.x = mouseX;
    s1.y = mouseY;
  }
  
}
