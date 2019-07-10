Node[] nodes = new Node[50];
int node_count = 0;

void setup(){
  
  size(600, 600);
  for(int i = 0; i < nodes.length; i++){
    nodes[i] = new Node(i, nodes);
  }
  
}

void draw(){
  
  background(0);
  
  for(int i = 0; i < node_count; i++){
    nodes[i].display();
    nodes[i].displayNetwork(node_count);
  }
  
}

void mousePressed(){
  
  if(node_count < nodes.length){
    nodes[node_count].setPosition(mouseX, mouseY);
    node_count++;
  }
  
}
