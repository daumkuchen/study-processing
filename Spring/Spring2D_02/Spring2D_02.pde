int num_springs = 12;
Spring2D[] s = new Spring2D[num_springs];
float mass = 3.;
float gravity = 5.;

void setup(){
  
  size(100, 400);
  fill(0);

  for(int i = 0; i < num_springs; i++){
    s[i] = new Spring2D(width / 2, i * (height / num_springs), mass, gravity);
  }
  
}

void draw(){
  
  background(204);
  
  s[0].update(mouseX, mouseY);
  s[0].display(mouseX, mouseY);
  
  for(int i = 1; i < s.length; i++){
    s[i].update(s[i - 1].x, s[i - 1].y);
    s[i].display(s[i - 1].x, s[i - 1].y);
  }
  
}
