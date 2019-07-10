class Node {
  
  int x, y;
  int radius = 1;
  int id;
  int speed = 4;
  int direction_x; // -1 or 1
  int direction_y; // -1 or 1
  int approach_value = 200;
  Node[] other_nodes;
  
  Node(int temp_id, Node[] temp_others){
    id = temp_id;
    other_nodes = temp_others;
    direction_x = int(random(-2, 2));
    direction_x = (direction_x == 0) ? -1 : direction_x;
    direction_y = int(random(-2, 2));
    direction_y = (direction_y == 0) ? -1 : direction_y;
  }
  
  void setPosition(int px, int py){
    x = px;
    y = py;
  }
  
  void movePoints(){
    
    x += (speed * direction_x);
    if((x > (width - radius)) || (x < radius)){
      direction_x *= -1;
    }
    
    y += (speed * direction_y);
    if((y > (height - radius)) || (y < radius)){
      direction_y *= -1;
    }
    
  }
  
  void display(){
    ellipseMode(RADIUS);
    noStroke();
    fill(255, 5);
    ellipse(x, y, radius, radius);
  }

  void displayNetwork(int node_count){
    stroke(255);
    for(int i = id; i < node_count; i++){
      
      // if(overlap(other_nodes[i]) == true){}
      
      if(approach(other_nodes[i]) == true){
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
  
  boolean approach(Node n){
    float distance_from_centers = dist(x, y, n.x, n.y);
    if(distance_from_centers < approach_value){
      return true;
    } else {
      return false;
    }
  }  
  
}
