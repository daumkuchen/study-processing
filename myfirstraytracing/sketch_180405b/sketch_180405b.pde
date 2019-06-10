
// [1]void setup = 初期化時に呼び出さる関数
void setup() {
  // キャンバスサイズを指定する
  size(256, 256);
}

// [2]y座標の変数を定義
int y = 0;

// [3]ピクセルの色を求める関数を定義
color calcPixelColor(int x, int y) {
  return color(x, y, 0);
}

// [4]void main = 一定間隔で繰り返し呼び出される関数
void draw() {
  
  //[5]1ライン分の色を計算する
  for(int x = 0; x < width; x++) {
    
    //[6]3で定義した関数を呼び出し、描画する
    color c = calcPixelColor(x, y);
    set(x, y, c);
    
  }
  
  y++;
  
  //[7]キャンバス全体に描画されたか分岐
  if(height <= y) {
    
    println("終了");
    
    //[8]ループ終了
    noLoop();
    
  }
}
