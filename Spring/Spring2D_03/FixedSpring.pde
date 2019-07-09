class FixedSpring extends Spring2D{
  
  float spring_length;
  
  FixedSpring(float pos_x, float pos_y, float m, float g, float s){
    super(pos_x, pos_y, m, g);
    spring_length = s;
  }
  
  void update(float new_x, float new_y){
    
    float dx = x - new_x;
    float dy = y - new_y;
    float angle = atan2(dy, dx);
    
    float target_x = new_x + cos(angle) * spring_length;
    float target_y = new_y + sin(angle) * spring_length;
    
    super.update(target_x, target_y);
    
    x = constrain(x, radius, width - radius);
    y = constrain(y, radius, height - radius);
    
  }
  
}
