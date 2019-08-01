PVector[] getVector(PVector[] v){
  
  PVector[] next_vec = new PVector[4];
  
  for(int i = 0; i < 4; i++){
    
    // 2頂点間の方向ベクトル
    PVector dir = PVector.sub(v[(i + 1) % 4], v[i]);
    dir.mult(gap);
    next_vec[i] = PVector.add(v[i], dir);
    
  }
  
  return next_vec;
  
}
