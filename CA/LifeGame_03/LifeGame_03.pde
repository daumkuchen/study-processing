int[][] angles = {{ 0, 1 }, { 1, 1 },
                  { 1, 0 }, { 1,-1 },
                  { 0,-1 }, {-1,-1 },
                  {-1, 0 }, {-1, 1 }};
                  
int num_angles = angles.length;
int x, y, nx, ny;
int dir = 0;
color black = color(0);
color white = color(255);

void setup(){
  
  size(100, 100);
  background(255);
  
  x = width / 2;
  y = height / 2;
  nx = x;
  ny = y;
  
  float wood_density = width * height * .5;
  
  for(int i = 0; i < wood_density; i++){
    int rx = int(random(width));
    int ry = int(random(height));
    set(rx, ry, black);
  }
  
}

void draw(){
  
  int rand = int(random(-2, 2)); // -1 or 0 or 1
  dir = (dir + rand + num_angles) % num_angles;
  nx = (nx + angles[dir][0] + width) % width;
  ny = (ny + angles[dir][1] + height) % height;
  
  if((get(x, y) == black) && (get(nx, ny) == white)){
    
    // MOVE
    set(x, y, white);
    set(nx, ny, black);
    x = nx;
    y = ny;
    
  }
  else if((get(x, y) == black) && (get(nx, ny) == black)){
    
    // reverse direction
    dir = (dir + (num_angles / 2)) % num_angles;
    
    x = (x + angles[dir][0] + width) % width;
    y = (y + angles[dir][1] + height) % height;
    
  }
  else {
    
    // STAY
    x = nx;
    y = ny;
    
  }
  
  nx = x;
  ny = y;
  
}
