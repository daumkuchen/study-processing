void setup() {
  size(256, 256);
}

int y = 0;

void draw() {
  for (int x = 0; x < width; x ++) {
    color c = calcPixelColor(x, y);
    set(x, y, c);
  }
  y ++;
  if (height <= y) {
    noLoop();
  }
}

// [1]シーンの構成
// 視点の座標
float ox = 0,
      oy = 0,
      oz = 5;
    
// 球の中心座標
float cx = 0,
      cy = 0,
      cz = 0;
    
// 球の半径
float r = 1;

// [2]色の描画関数を定義
color calcPixelColor(int x, int y) {
  
  // 投影面までの距離 = キャンバスの高さ
  float imagePlane = height;

  // ピクセルに対する一次レイの方向を計算する
  float dx =   x + 0.5 - width / 2;
  float dy = -(y + 0.5 - height / 2);
  float dz = -imagePlane;

  // レイが球と交差するかによって色を選択する
  if (intersectRaySphere(ox, oy, oz, dx, dy, dz, cx, cy, cz, r)) {
    // 白を返す
    return color(255, 255, 255);
  } else {
    // 黒を返す
    return color(0, 0, 0);
  }
}

// [3]レイと球の交差判定関数
boolean intersectRaySphere(
  // 視点の座標
  float ox, float oy, float oz,
  // レイの向き
  float dx, float dy, float dz,
  // 球の中心座標
  float cx, float cy, float cz,
  // 球の半径
  float r
  ) {
    
  // 交差判定の方程式の判別式に必要な値を求める
  float a = sq(dx) + sq(dy) + sq(dz);
  float b = 2 * (dx*(ox-cx) + dy*(oy-cy) + dz*(oz-cz));
  float c = sq(ox-cx) + sq(oy-cy) + sq(oz-cz) - sq(r);

  // 判別式を計算し、その解が0以上だったらtrueを返す
  float d = b * b - 4 * a * c;
  return 0 <= d;
}
