void divSquare(float pos_x, float pos_y, float wd){
 
  int itr = 0;
  float end_pos_x = pos_x + wd;
  float end_pos_y = pos_y + wd;
  
  setColor();
  rect(pos_x, pos_y, wd, wd);
  
  while(wd > thr){
    
    itr++;
    
    if(itr % 2 == 1){
      
      while(pos_x + wd * ratio < end_pos_x + .1){
        divRect(pos_x, pos_y, wd * ratio);
        pos_x += wd * ratio;
      }
      wd = end_pos_x - pos_x;
      
    } else {
      
      while(pos_y + wd / ratio < end_pos_y + .1){
        divRect(pos_x, pos_y, wd);
        pos_y += wd / ratio;
      }
      wd = end_pos_y - pos_y;

    }
    
  }
  
}
