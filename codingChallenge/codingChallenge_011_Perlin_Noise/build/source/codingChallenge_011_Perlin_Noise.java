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

public class codingChallenge_011_Perlin_Noise extends PApplet {

int cols;
int rows;
int scl = 20;
int w = 1600;
int h = 1600;

float flying = 0;

float[][] terrain;

public void setup() {
  
  cols = w / scl;
  rows = h / scl;
}

public void draw() {

  flying -= 0.01f;

  float yoff = flying;
  terrain = new float[cols][rows];
  for(int y = 0; y < rows; y++) {
    float xoff = 0;
    for(int x = 0; x < cols; x++) {
      terrain[x][y] = map(noise(xoff, yoff), 0, 1, -100, 100);
      xoff += 0.2f;
    }
    yoff += 0.2f;
  }

  background(0);
  stroke(255);
  noFill();

  translate(width / 2, height / 2);
  rotateX(PI/3);

  translate(-w/2, -h/2);
  translate(scl, 0);

  for(int y = 0; y < rows - 1; y++) {
    beginShape(TRIANGLE_STRIP);
    for(int x = 0; x < cols; x++) {
     vertex(x * scl, y * scl, terrain[x][y]);
     vertex(x * scl, (y + 1) * scl, terrain[x][y + 1]);
     // rect(x * scl, y * scl, scl , scl);
    }
    endShape();
  }
}
  public void settings() {  size(600, 600, P3D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "codingChallenge_011_Perlin_Noise" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
