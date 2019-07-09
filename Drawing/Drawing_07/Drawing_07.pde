int num_lines = 500;
MovingLine[] lines = new MovingLine[num_lines];
int current_line = 0;

void setup(){
  
  size(700, 100);
  for(int i = 0; i < num_lines; i++){
    lines[i] = new MovingLine();
  }
  
}

void draw(){
  
  background(204);
  
  for(int i = 0; i < current_line; i++){
    lines[i].display();
  }
  
}

void mouseDragged(){
  
  lines[current_line].setPosition(mouseX, mouseY, pmouseX, pmouseY);
  
  if(current_line < num_lines - 1){
    current_line++;
  }
  
}
