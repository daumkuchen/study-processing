class Blade {
  
  float x, y;
  
  Blade(int pos_x, int pos_y){
    x = pos_x;
    y = pos_y;
  }
  
  void seed(int pos_x, int pos_y){
    x = pos_x;
    y = pos_y;
  }
  
  void grow(){
    x += .5;
    y -= 1.;
    point(x, y);
  }
  
}
