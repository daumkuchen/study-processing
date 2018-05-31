import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch_180531b extends PApplet {

// x座標用ノイズ変数
float noiseX = 0.0f;

// y座標用ノイズ変数
float noiseY = 0.0f;

// noiseX, noiseYのスタート地点
float start = 0.0f;

// ステップの数値が少ないと変化が滑らかになる
float step = 0.02f;

public void setup() {
  
}

public void draw() {

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
  public void settings() {  size(600, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_180531b" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
