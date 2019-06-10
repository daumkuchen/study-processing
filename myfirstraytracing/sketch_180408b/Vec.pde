// [1] クラス"Vec"の定義
class Vec {
  
  // [2] メンバ変数。ベクトルの持つ3成分
  float x, y, z;

  // [3] コンストラクタ。引数として渡されたx, y, zを、メンバ変数x, y, zに代入する
  Vec(float x, float y, float z) {
    this.x = x;
    this.y = y;
    this.z = z;
  }

  // [4] メンバ関数。ベクトル同士の足し算
  Vec add(Vec v) {
    return new Vec(this.x + v.x, this.y + v.y, this.z + v.z);
  }
  
  // ベクトル同士の減算
  Vec sub(Vec v) {
    return new Vec(this.x - v.x, this.y - v.y, this.z - v.z);
  }

  // ベクトルの定数倍
  Vec scale(float s) {
    return new Vec(this.x * s, this.y * s, this.z * s);
  }

  // 逆向きのベクトルを返す
  Vec neg() {
    return new Vec(-this.x, -this.y, -this.z);
  }

  // ベクトルの長さを返す
  float len() {
    return sqrt(this.x * this.x + this.y * this.y + this.z * this.z);
  }

  // 正規化（単位ベクトル化）したベクトルを返す
  Vec normalize() {
    return scale(1.0 / len());
  }

  // 内積
  float dot(Vec v) {
    return this.x * v.x + this.y * v.y + this.z * v.z;
  }

  // 外積
  Vec cross(Vec v) {
    return new Vec(
      this.y * v.z - v.y * this.z,
      this.z * v.x - v.z * this.x,
      this.x * v.y - v.x * this.y
    );
  }
  
  // ベクトルを文字列として返す
  String toString() {
    return "Vec(" + this.x + ", " + this.y + ", " + this.z + ")";
  }
  
}


  
