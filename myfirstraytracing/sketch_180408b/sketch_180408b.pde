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

// [1]シーンの構成（ベクトルを使うことでまとめて定義可能）

// 視点の座標
Vec eye = new Vec(0, 0, 5);

// 球の中心座標
Vec sphereCenter = new Vec(0, 0, 0);

// 球の半径
float sphereRadius = 1;

// [2]ピクセルに対するレイの方向ベクトルを返す関数
Vec calcPrimaryRay(int x, int y) {
  float imagePlane = height;
  float dx =   x + 0.5 - width / 2;
  float dy = -(y + 0.5 - height / 2);
  float dz = -imagePlane;
  return new Vec(dx, dy, dz).normalize();
}

// [2]色の描画関数を定義
color calcPixelColor(int x, int y) {
  
  // 一次レイの方向ベクトルを求める
  Vec rayDir = calcPrimaryRay(x, y);

  // レイが球と交差するかによって色を選択する
  if (intersectRaySphere(eye, rayDir, sphereCenter, sphereRadius)) {
    // 白を返す
    return color(255, 255, 255);
  } else {
    // 黒を返す
    return color(0, 0, 0);
  }
}

// [3]レイと球の交差判定関数
boolean intersectRaySphere(
  Vec rayOrigin,
  Vec rayDir,
  Vec sphereCenter,
  float sphereRadius
  ) {
  Vec v = rayOrigin.sub(sphereCenter);
  float b = rayDir.dot(v);
  float c = v.dot(v) - sq(sphereRadius);
  float d = b * b - c;
  return d >= 0;
}
