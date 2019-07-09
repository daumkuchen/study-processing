import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

void setup(){
  
  size(800, 800);
  frameRate(60);

  oscP5 = new OscP5(this, 8888);
  myRemoteLocation = new NetAddress("192.168.0.16", 8888);

}

void draw(){

  if(mousePressed){
    background(255, 0, 0);
  } else {
    background(0);
  }
  
  noFill();
  stroke(255);
  ellipse(mouseX, mouseY, 10, 10);
  
  OscMessage msg = new OscMessage("/mouse/position");
  msg.add(mouseX);
  msg.add(mouseY);
  
  oscP5.send(msg, myRemoteLocation);
  
}

void mousePressed(){
  
  OscMessage msg = new OscMessage("/mouse/clicked");
  //msg.add(1);
  msg.add(2);
  oscP5.send(msg, myRemoteLocation);
  
}

void mouseReleased(){

  OscMessage msg = new OscMessage("/mouse/clicked");
  //msg.add(0);
  msg.add(1);
  oscP5.send(msg, myRemoteLocation);
  
}
