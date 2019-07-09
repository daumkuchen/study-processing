class Spot {
  
  float x, y;
  float diameter;
  float speed;
  int direction = 1;
  
  Spot(float posx, float posy, float dia, float sp){
    x = posx;
    y = posy;
    diameter = dia;
    speed = sp;
  }
  
  void move(){
    y += (speed * direction);
    if((y > (height - diameter / 2)) || (y < diameter / 2)){
      direction *= -1;
    }
  }
  
  void display(){
    ellipse(x, y, diameter, diameter);
  }
  
}
