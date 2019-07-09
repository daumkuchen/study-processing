int SOUTH = 0;
int EAST =  1;
int NORTH = 2;
int WEST =  3;
int direction = NORTH;
int x, y;

color on = color(255);
color off = color(0);

void setup(){
  
  size(100, 100);
  x = width / 2;
  y = height / 2;
  background(0);
  
}

void draw(){
  
  if(direction == SOUTH){
    
    y++;
    if(y == height){
      y = 0;
    }
    
  }
  else if(direction == EAST){
    
    x++;
    if(x == width){
      x = 0;
    }
    
  }
  else if(direction == NORTH){
    
    if(y == 0){
      y = height - 1;
    } else {
      y--;
    }
    
  }
  else if(direction == WEST){
    
    if(x == 0){
      x = width - 1;
    } else {
      x--;
    }
    
  }
  
  if(get(x, y) == on){
    
    set(x, y, off);
    if(direction == SOUTH){
      direction = WEST;
    } else {
      direction--;
    }
    
  } else {
    
    set(x, y, on);
    if(direction == WEST){
      direction = SOUTH;
    } else {
      direction++;
    }
    
  }
  
}
