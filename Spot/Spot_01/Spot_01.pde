Spot sp1, sp2, sp3;

void setup(){
  
  size(100, 100);
  noStroke();
  
  sp1 = new Spot(20, 50, 40, 0.5);
  sp2 = new Spot(50, 50, 10, 2.0);
  sp3 = new Spot(80, 50, 30, 1.5);
  
}

void draw(){

  fill(0, 15);
  rect(0, 0, width, height);
  fill(255);
  
  sp1.move();
  sp2.move();
  sp3.move();
  
  sp1.display();
  sp2.display();
  sp3.display();
  
}
