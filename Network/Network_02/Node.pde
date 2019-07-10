class Node {
  
  int x, y;
  int radius = 50;
  int id;
  Node[] other_nodes;
  
  Node(int temp_id, Node[] temp_others){
    id = temp_id;
    other_nodes = temp_others;
  }
  
  void setPosition(int px, int py){
    x = px;
    y = py;
  }
  
  void display(){
    ellipseMode(RADIUS);
    noStroke();
    fill(255, 40);
    ellipse(x, y, radius, radius);
  }

  void displayNetwork(int node_count){
    stroke(255);
    for(int i = id; i < node_count; i++){
      if(overlap(other_nodes[i]) == true){
        line(x, y, other_nodes[i].x, other_nodes[i].y);
      }
    }
  }
  
  boolean overlap(Node n){
    float distance_from_centers = dist(x, y, n.x, n.y);
    float diameter = radius * n.radius;
    if(distance_from_centers < diameter){
      return true;
    } else {
      return false;
    }
  }
  
}
