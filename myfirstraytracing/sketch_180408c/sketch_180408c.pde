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

// 交差していないことを示す値（定数）
final float NO_HIT = Float.POSITIVE_INFINITY;

// 点光源の位置
Vec lightPos = new Vec(10, 10, 10);

// 点光源のパワー
float lightPower = 4000;

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
  Vec rayDir = calcPrimaryRay(x, y);

  // [1] 球との交差判定を行い、視点からの距離を取得する
  float t = intersectRaySphere(eye, rayDir, sphereCenter, sphereRadius);

  // [2] 球と交差しなかった場合は、黒を返して終了
  if (t == NO_HIT) { return color(0, 0, 0); }

  // [3] 視点からの距離を使って交点座標を計算する
  Vec p = eye.add(rayDir.scale(t));

  // [4] 交差した球の表面の法線ベクトルを計算する
  Vec n = p.sub(sphereCenter).normalize();

  // [5] 光源計算を行う
  float brightness = diffuseLighting(p, n, lightPos, lightPower);

  // [6] 明るさからピクセルの色に変換する
  int i = min(int(brightness * 255), 255);
  return color(i, i, i);
}

// [3]レイと球の交差判定関数
// 交差した点までの距離を返す、交差しなかった場合はNO_HITを返す
float intersectRaySphere(
  Vec rayOrigin,
  Vec rayDir,
  Vec sphereCenter,
  float sphereRadius
  ) {
  Vec v = rayOrigin.sub(sphereCenter);
  float b = rayDir.dot(v);
  float c = v.dot(v) - sq(sphereRadius);

  // [1] 交差判定の方程式の判別式
  float d = b * b - c;

  if (0 <= d) { // 交差した場合
    // [2] 交点までの距離を計算する
    float s = sqrt(d);
    float t = -b - s;
    if (t <= 0) { t = -b + s; }
    if (0 < t) {
      return t;
    }
  }

  // [3] 交差していないことを示す NO_HIT を返す
  return NO_HIT;
}
