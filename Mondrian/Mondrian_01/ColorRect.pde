void colorRect(float x, float y, float w, float h){
  
  color col;
  float val = random(1);
  
  if(val < .15){
    col = color(0, 1, 1); //red
  }
  else if(val < .3){
    col = color(2. / 3, 1, 1); //blue
  }
  else if(val < .45){
    col = color(1. / 6., 1, 1); //yellow
  }
  else if(val < .5){
    col = color(0, 1, 0); //black
  }
  else if(val < .7){
    col = color(0, 1, .9); //gray
  }
  else {
    col = color(0, 0, 1); //white
  }
  
  fill(col);
  strokeWeight(5);
  rect(x, y, w, h);
  
}
