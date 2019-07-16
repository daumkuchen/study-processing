int num_a = 6;
int num_b = 10;

float ratio = (float) num_b / num_a;

float pos_x = 0;
float pos_y = 0;
float wd = 0;
int itr = 0;

void setup(){
  
  size(500, 500);
  
  colorMode(HSB, 1);
  wd = width;

  while(wd > .1){
    
    itr++;
    
    if(itr % 2 == 1){
      
      while(pos_x + wd * ratio < width + .1){
        fill(color(random(1), 1, 1));
        rect(pos_x, pos_y, wd * ratio, wd);
        pos_x += wd * ratio;
      }
      wd = width - pos_x;
      
    } else {
      
      while(pos_y + wd / ratio < width + .1){
        fill(color(random(1), 1, 1));
        rect(pos_x, pos_y, wd, wd / ratio);
        pos_y += wd / ratio;
      }
      wd = width - pos_y;
      
    }
    
  }

}
