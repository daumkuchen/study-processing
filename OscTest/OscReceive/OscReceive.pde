import oscP5.*;
import netP5.*;

OscP5 oscP5;

float vol;

void setup(){
  
  size(800, 600);
  frameRate(60);

  oscP5 = new OscP5(this, 2400);

}

void draw(){
  
  background(vol * 255, 0, 0);
  //print(vol);
  
}

void oscEvent(OscMessage msg){
  
  vol = msg.get(0).floatValue();
  //print("*");
  
  //print("### received an osc message.");
  //print(" addrpattern: " + msg.addrPattern());
  //println(" typetag: " + msg.typetag());
  //msg.print();
  
  print(msg.get(0).floatValue());
  
}
