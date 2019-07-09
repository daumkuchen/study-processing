int[][] grid, future_grid;

void setup(){
  
  size(540, 100);
  frameRate(40);
  
  grid = new int[width][height];
  future_grid = new int[width][height];
  
  float density = .3 * width * height;
  
  for(int i = 0; i < density; i++){
    int rx = int(random(width));
    int ry = int(random(height));
    grid[rx][ry] = 1;
  }
  
  background(0);
  
}

void draw(){
  
  for(int x = 1; x < width - 1; x++){
    for(int y = 1; y < height - 1; y++){
      
      int nb = neighbors(x, y);
      
      if((grid[x][y] == 1) && (nb < 2)){
        // KODOKU-DIE
        future_grid[x][y] = 0;
        set(x, y, color(0));
      }
      else if((grid[x][y] == 1) && (nb > 3)){
        // MISSHU-DIE
        future_grid[x][y] = 0;
        set(x, y, color(0));
      }
      else if((grid[x][y] == 0) && (nb == 3)){
        // BORN
        future_grid[x][y] = 1;
        set(x, y, color(255));
      }
      else {
        // STAY
        future_grid[x][y] = grid[x][y]; 
      }
      
    }
  }
  
  int[][] temp = grid;
  grid = future_grid;
  future_grid = temp;

}

int neighbors(int x, int y){
  
  int north = (y + height - 1) % height;
  int south = (y + 1) % height;
  int east = (x + 1) % width;
  int west = (x + width - 1) % width;
  
  return grid[x][north] +    // N
         grid[east][north] + // NW
         grid[east][y] +     // E
         grid[east][south] + // SE
         grid[x][south] +    // S
         grid[west][south] + // SW
         grid[west][y] +     // W
         grid[west][north];  // NW
         
}
