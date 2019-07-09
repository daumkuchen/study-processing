void setup(){
  
  size(100, 100);
  
}

void draw(){
  
  for(int i = 0; i < 50; i++){
    
    //drawLine(mouseX + i, mouseY + i);
    drawLine(mouseX + i, mouseY);
    
  }
  
}

void drawLine(float mousex, float mousey){
  point(mousex, mousey);
}
