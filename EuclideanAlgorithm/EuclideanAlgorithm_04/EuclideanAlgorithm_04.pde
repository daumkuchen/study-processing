int num_a = 10;
int num_b = 7;
float ratio = (float) num_b / num_a;

void setup(){
  
  size(500, 500);
  colorMode(HSB, 1);
  
  int itr = 0;
  float pos_x = 0;
  float pos_y = 0;
  float wd = width * ratio;

  while(wd > .1){
    
    itr++;
    
    if(itr % 2 == 1){
      
      while(pos_x + wd < width + .1){
        divSquare(pos_x, pos_y, wd);
        pos_x += wd;
      }
      wd = width - pos_x;
      
    } else {
      
      while(pos_y + wd < width * ratio + .1){
        divSquare(pos_x, pos_y, wd);
        pos_y += wd;
      }
      wd = width * ratio - pos_y;
      
    }
    
  }

}

void divSquare(float pos_x, float pos_y, float wd){
  
  int itr = 0;
  float end_pos_x = wd + pos_x;
  float end_pos_y = wd + pos_y;
  
  while(wd > .1){
    
    itr++;
    
    if(itr % 2 == 1){
      
      while(pos_x + wd * ratio < end_pos_x + .1){
        fill(color(random(1), 1, 1));
        rect(pos_x, pos_y, wd * ratio, wd);
        pos_x += wd * ratio;
      }
      wd = end_pos_x - pos_x;
      
    } else {
      
      while(pos_y + wd / ratio < end_pos_y + .1){
        fill(color(random(1), 1, 1));
        rect(pos_x, pos_y, wd, wd / ratio);
        pos_y += wd / ratio;
      }
      wd = end_pos_y - pos_y;

    }
    
  }
  
}
