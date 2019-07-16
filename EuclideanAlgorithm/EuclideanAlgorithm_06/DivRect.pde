void divRect(float pos_x, float pos_y, float wd){
  
  int itr = 0;
  float end_pos_x = pos_x + wd;
  float end_pos_y = pos_y + wd / ratio;
  
  setColor();
  rect(pos_x, pos_y, wd, wd / ratio);
  
  while(wd > thr){
    
    itr++;
    
    if(itr % 2 == 0){
      
      while(pos_x + wd < end_pos_x + .1){
        divSquare(pos_x, pos_y, wd);
        pos_x += wd;
      }
      wd = end_pos_x - pos_x;
      
    } else {

      while(pos_y + wd < end_pos_y + .1){
        divSquare(pos_x, pos_y, wd);
        pos_y += wd;
      }
      wd = end_pos_y - pos_y;
      
    }
    
  }
  
}
