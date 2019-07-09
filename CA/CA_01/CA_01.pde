int[] rules = { 0, 1, 0, 1, 1, 0, 1, 0 };

int gen = 1;
color on  = color(255);
color off = color(0);

void setup(){
  
  size(101, 101);
  frameRate(30);
  background(0);
  set(width / 2, 0, on); // set above pixel color white
  
}

void draw(){
  
  for(int x = 1; x < width - 1; x++){
    
    // get pixel
    int left  = get(x - 1, gen - 1);
    int right = get(x + 1, gen - 1);
    int me = get(x, gen - 1);
    
    if(rules(left, me, right) == 1){
      set(x, gen, on);
    }
  
  }
  
  gen++;
    
  if(gen > height - 1){
    noLoop();
  }
  
}

int rules(color a, color b, color c){
  if((a == on ) && (b == on ) && (c == on )){ return rules[0]; }
  if((a == on ) && (b == on ) && (c == off)){ return rules[1]; }
  if((a == on ) && (b == off) && (c == on )){ return rules[2]; }
  if((a == on ) && (b == off) && (c == off)){ return rules[3]; }
  if((a == off) && (b == on ) && (c == on )){ return rules[4]; }
  if((a == off) && (b == on ) && (c == off)){ return rules[5]; }
  if((a == off) && (b == off) && (c == on )){ return rules[6]; }
  if((a == off) && (b == off) && (c == off)){ return rules[7]; }
  return 0;
}
