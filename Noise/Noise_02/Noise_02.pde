float noise_x = 0.;
float noise_y = 0.;
float inc = .05;
float speed = .01;
float offset_y = 0.;
int grid_size = 10;
int loop = 60;

void setup(){
  
  size(600, 600, P3D);
  
}

void draw(){

  background(0);
  
  noise_x = 0.;
  noise_y = offset_y;
  
  translate(0, 120, -300);
  rotateX(.7);
  
  // LOOP_Y
  for(int y = 0; y < loop; y++){
    
    noFill();
    beginShape();
    
    // LOOP_X
    for(int x = 0; x < loop; x++){
      
      float z = noise(noise_x, noise_y) * 255;
      float alpha = map(y, 0, loop, 0, 255);
      stroke(255, alpha);
      vertex(x * grid_size, y * grid_size, z);
      noise_x = noise_x + inc;
      
    }
    
    noise_x = 0.;
    noise_y = noise_y + inc;
    endShape();
    
  }
  
  offset_y += speed;
  
}
