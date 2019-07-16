void divRect(float x, float y, float w){
  
  int loop = 0;
  float end_x = x + w;
  float end_y = y + w / ratio;
  
  while(w > thr){
    
    loop++;
    
    // direction: x
    if(loop % 2 == 0){
    
      while(x + w < end_x + .1){
        colorRect(x, y, w, w);
        if(random(1) < thr2){
          divSquare(x, y, w);
        }
        x += w;
      }
      w = end_x - x;
      
    // direction: y
    } else {
    
      while(y + w < end_y + .1){
        colorRect(x, y, w, w);
        if(random(1) < thr2){
          divSquare(x, y, w);
        }
        y += w;
      }
      w = end_y - y;
    
    }
    
  }
  
}

void divSquare(float x, float y, float w){
  
  int loop = 0;
  float end_x = x + w;
  float end_y = y + w;
  
  while(w > thr){
    
    loop++;
    
    // direction: y
    if(loop % 2 == 1){
    
      while(x + w * ratio < end_x + .1){
        colorRect(x, y, w * ratio, w);
        if(random(1) < thr2){
          divRect(x, y, w * ratio);
        }
        x += w * ratio;
      }
      w = end_x - x;
      
    // direction: x
    } else {
    
      while(y + w / ratio < end_y + .1){
        colorRect(x, y, w, w / ratio);
        if(random(1) < thr2){
          divRect(x, y, w);
        }
        y += w / ratio;
      }
      w = end_y - y;
    
    }
    
  }
    
}
