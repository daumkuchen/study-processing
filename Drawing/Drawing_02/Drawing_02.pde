void setup(){
  
  size(100, 100);
  noStroke();
  fill(255, 40);
  background(0);
  
}

void draw(){
  
  if(mousePressed == true){
    fill(0, 26);
  } else {
    fill(255, 26);
  }
  
  for(int i = 0; i < 6; i++){
    drawCirce(mouseX + i * i, mouseY, i);
  }
  
}

void drawCirce(float mousex, float mousey, float radius){
  ellipse(mousex, mousey, radius, radius);
}
