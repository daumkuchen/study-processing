import controlP5.*;
import processing.pdf.*;
ControlP5 cp5;

int num_a, num_b;
float ratio;
float thr;

float[] rand = new float[0];
boolean rec = false;
int count;

void setup(){
  
  size(500, 500);
  colorMode(HSB, 1);
  
  controller();

}

void draw(){
  
  background(1, 0, 1);
  ratio = (float) num_b / num_a;
  count = 0;
  
  if(rec){
    String name_pdf = str(num_a) + "_" + str(num_b) + "_" + str(int(thr)) + ".pdf";
    beginRecord(PDF, name_pdf);
  }
  
  if(ratio != 1){
     divSquare(0, 0, width);
  }
  
  if(rec){
    endRecord();
    String name_png = str(num_a) + "_" + str(num_b) + "_" + str(int(thr)) + ".png";
    save(name_png);
    rec = false;
  }
  
}
