float val = 1.;

class MovingLine {
  
  float x1, y1, x2, y2;
  
  void setPosition(int x, int y, int px, int py){
    x1 = x;
    y1 = y;
    x2 = px;
    y2 = py;
  }
  
  void display(){
    x1 += random(-val, val);
    y1 += random(-val, val);
    x2 += random(-val, val);
    y2 += random(-val, val);
    line(x1, y1, x2, y2);
  }
  
}
