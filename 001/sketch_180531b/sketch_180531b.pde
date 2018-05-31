// x座標用ノイズ変数
float noiseX = 0.0;

// y座標用ノイズ変数
float noiseY = 0.0;

// noiseX, noiseYのスタート地点
float start = 0.0;

// ステップの数値が少ないと変化が滑らかになる
float step = 0.02;

void setup() {
  size(600, 600);
}

void draw() {

  background(255);

  // ピクセルをロードする
  loadPixels();

  // noiseYをスタート地点で初期化
  noiseY = start;

  for (int y = 0; y < height; y ++) {

    // noiseXをスタート地点で初期化
    noiseX = start;

    for (int x = 0; x < width; x ++) {
      float c = noise(noiseX, noiseY) * 255;

      // 決定した色をピクセルに反映
      pixels[y * width + x] = color(c);

      // noiseXを更新
      noiseX += step;
    }

    // noiseYを更新
    noiseY += step;
  }

  // ピクセルを更新
  updatePixels();

}
