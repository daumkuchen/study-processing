Spot[] spots;

void setup(){
  
  size(1280, 720);
  noStroke();
  
  int num_spots = 60;
  int dia = width / num_spots;
  spots = new Spot[num_spots];
  for(int i = 0; i < num_spots; i++){
    float x = dia / 2 + i * dia;
    float rate = random(1., 5.);
    spots[i] = new Spot(x, 50, dia, rate);
  }
  
}

void draw(){

  fill(0, 15);
  rect(0, 0, width, height);
  fill(255);
  
  for(Spot s: spots){
    s.move();
    s.display();
  }
  
}

void mousePressed(){
  
   saveFrame("render/####.png");
   
}
