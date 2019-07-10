float noise_x = 0.;
float noise_y = 0.;
float inc = .05;
float offset_y = 0.;
int grid_size = 10;

void setup(){
  
  size(600, 600);
  
}

void draw(){

  background(0);
  
  noise_x = 0.;
  noise_y = offset_y;
  
  for(int y = 0; y < 60; y++){
    for(int x = 0; x < 60; x++){
      float n = noise(noise_x, noise_y) * 255.;
      fill(n);
      rect(x * grid_size, y * grid_size, grid_size, grid_size);
      noise_x = noise_x + inc;
    }
    noise_x = 0.;
    noise_y = noise_y + inc;
  }
  
}
