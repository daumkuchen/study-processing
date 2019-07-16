void mouseClicked(){
  
  changeSegmentation();
  
}

void draw(){
  
  frameRate(30);
  //changeSegmentation();

}

void changeSegmentation(){
  
  thr = int(random(10, 300));
  thr2 = random(0, 1);
  
  println("thr =", thr, "thr2 =", thr2);

  colorRect(0, 0, width, width);
  divSquare(0, 0, width);
  
}
