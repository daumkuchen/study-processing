void setup() {
  
  // [1] ベクトルのインスタンスを生成する
  Vec a = new Vec(1.0, 2.0, 3.0);
  Vec b = new Vec(4.0, 5.0, 6.0);
  
  // [2] ベクトルa, bの各成分（メンバ変数）をコンソールに出力する
  // println(a.x, a.y, a.z);
  // println(b.x, b.y, b.z);

  // [3] ベクトル同士の足し算を行う（メンバ関数）
  Vec c = a.add(b);

  // [4] ベクトルc（aとbの和）の各成分をコンソールに出力する
  // println(c.x, c.y, c.z);
  
  // println(new Vec(1.0, 2.0, 3.0));
  
}
