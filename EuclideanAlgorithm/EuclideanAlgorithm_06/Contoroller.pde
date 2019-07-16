void controller(){
  
  cp5 = new ControlP5(this);
  
  cp5.addSlider("num_a")
    .setPosition(10, 10)
    .setSize(100, 20)
    .setRange(1, 40)
    .setValue(10)
    .setColorCaptionLabel(0);
    
  cp5.addSlider("num_b")
    .setPosition(10, 50)
    .setSize(100, 20)
    .setRange(1, 40)
    .setValue(6)
    .setColorCaptionLabel(0);
    
  cp5.addSlider("thr")
    .setPosition(10, 90)
    .setSize(100, 20)
    .setRange(10, 300)
    .setNumberOfTickMarks(30)
    .setValue(100)
    .setColorCaptionLabel(0);
    
  cp5.addBang("changeColor")
    .setPosition(10, 130)
    .setSize(50, 20)
    .setColorCaptionLabel(0);
    
  cp5.addBang("rec")
    .setPosition(10, 170)
    .setSize(50, 20)
    .setColorCaptionLabel(0);
    
}
