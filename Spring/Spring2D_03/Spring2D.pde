class Spring2D {
  
  float vx, vy;
  float x, y;
  float mass;
  float gravity;
  float radius = 10.;
  float stiffness = .2;
  float damping = .7;
  
  Spring2D(float pos_x, float pos_y, float m, float g){
    x = pos_x;
    y = pos_y;
    mass = m;
    gravity = g;
  }
  
  void update(float target_x, float target_y){
    
    float force_x = (target_x - x) * stiffness;
    float force_y = (target_y - y) * stiffness;
    
    float ax = force_x / mass;
    float ay = force_y / mass;
    
    vx = damping * (vx + ax);
    vy = damping * (vy + ay);
    
    x += vx;
    y += vy;
    
  }
  
  void display(float nx, float ny){
    noStroke();
    ellipse(x, y, radius * 2, radius * 2);
    stroke(255);
    line(x, y, nx, ny);
  }
   
}
