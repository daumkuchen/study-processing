import joons.JoonsRenderer;

JoonsRenderer jr;
MeshObj obj;

//camera declarations
float eyeX = 0;
float eyeY = 0;
float eyeZ = 0;
float centerX = 0;
float centerY = 0;
float centerZ = -1;
float upX = 0;
float upY = 1;
float upZ = 0;
float fov = PI / 4; 
float aspect = 4/3f;  
float zNear = 5;
float zFar = 10000;

void setup() {
  
  size(960, 720, P3D);
  
  obj = new MeshObj(loadShape("bunny.obj"));
  
  jr = new JoonsRenderer(this);
  
  jr.setSampler("ipr");
  jr.setSizeMultiplier(1);
  jr.setAA(-2, 0, 1);
  jr.setCaustics(1);
  //jr.setTraceDepth(1,4,4);
  //jr.setDOF(170, 5);

}

void draw() {
  
  jr.beginRecord();
  camera(eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ);
  perspective(fov, aspect, zNear, zFar);

  jr.background(0, 255, 255);
  //jr.background("gi_instant");
  jr.background("gi_ambient_occlusion");

  pushMatrix();
  translate(0, 0, -120);
  strokeWeight(1);
  stroke(0);
  jr.background("cornell_box", 100, 100, 100); //cornellBox(width, height, depth);
  popMatrix();
  
  /*
  pushMatrix();
  translate(-40, 20, -140);
  jr.fill("light", 5, 5, 5);
  sphere(20);
  popMatrix();
  */

  /*
  pushMatrix();
  translate(40, -20, -140);
  jr.fill("light", 5, 5, 5);
  sphere(20);
  popMatrix();
  */
  
  pushMatrix();
  fill(255);
  jr.fill("glass", 255, 255, 255);
  
  // monkey
  //translate(-12, 5, -100);
  //scale(30, 30, 30);
  //rotateX(radians(180));
  //rotateY(radians(25));
  
  // bunny
  translate(-4.5, 24, -100);
  scale(14, 14, 14);
  rotateX(radians(180));
  rotateY(radians(220));
  
  obj.draw();
  popMatrix();

  jr.endRecord();
  jr.displayRendered(true);
  
  surface.setTitle("" + frameRate);
  
}

void keyPressed() {
  
  if (key == 'r' || key == 'R'){
    jr.render();
  }
  
  //if (key == 's' || key == 'S'){
  //  saveFrame("render/00" + screen_shot + ".png");
  //}
  
}
