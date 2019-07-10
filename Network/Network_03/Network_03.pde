Node[] nodes = new Node[200];
int node_count = 0;

void setup(){
  
  size(1280, 720);
  for(int i = 0; i < nodes.length; i++){
    nodes[i] = new Node(i, nodes);
  }
  
}

void draw(){
  
  background(0);
  
  for(int i = 0; i < node_count; i++){
    nodes[i].display();
    nodes[i].displayNetwork(node_count);
    
    nodes[i].movePoints();
  }
  
}

void mousePressed(){
  
  if(node_count < nodes.length){
    nodes[node_count].setPosition(mouseX, mouseY);
    node_count++;
  }
  
}

void keyPressed(){
  
  if(key == ' '){
    if(node_count + 10 < nodes.length){
      for(int i = 0; i < 10; i++){
        int x = int(random(0, width));
        int y = int(random(0, height));
        nodes[node_count].setPosition(x, y);
        node_count++;
      }
    }
  }
  
  if(key == 's'){
    saveFrame("render/####.png");
  }
  
}
