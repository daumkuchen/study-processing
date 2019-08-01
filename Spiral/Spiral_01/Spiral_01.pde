float STEP = 2. * PI * .01;
float theta = 0.;

void setup(){
  
  size(500, 500);
  
}

void draw(){
  
  translate(width / 2, height / 2);
  line(rad(theta) * cos(theta),
       rad(theta) * sin(theta),
       rad(theta + STEP) * cos(theta + STEP),
       rad(theta + STEP) * sin(theta + STEP));
  
  theta += STEP;
  
}

float rad(float t){
  
  //アルキメデス螺旋
  //float r = 5. * t;
  
  //フェルマー螺旋
  //float r = 20. * sqrt(t);
  
  //対数螺旋
  float r = pow(1.1, t);
  
  return r;
}
