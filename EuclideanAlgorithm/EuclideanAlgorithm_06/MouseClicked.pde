void mouseClicked(){
  
  //changeSegmentation();
  
}

void changeSegmentation(){
  
  num_a = int(random(1, 20));
  num_b = int(random(1, 20));
  
  while(num_a == num_b){
    num_b = int(random(1, 20));
  }
  
  thr = int(random(10, 300));
  
  println("num_a =", num_a, "num_b =", num_b, "thr =", thr);
  
  ratio = (float) num_a / num_b;
  
  background(0, 0, 1);
  divSquare(0, 0, width);
  
}
