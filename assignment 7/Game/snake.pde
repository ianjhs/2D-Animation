class Snake {
 int cells;
 float x;
 float y;
 float xspeed = 1;
 float yspeed = 0;
 int total;  
 int target;
 ArrayList<PVector> tail;
 
 Snake(int x, int y) {
  this.total = 0;
  this.tail = new ArrayList<PVector>();
  this.x = x;
  this.y = y;
  this.target = 2;
 }
 
 void dir(float x, float y) {
    xspeed = x;
    yspeed = y;
  }

 void update() {
    if (total > 0) {
      if (total == tail.size() && !tail.isEmpty()) {
        tail.remove(0);
      }
      tail.add(new PVector(x, y));
    }

    x = x + xspeed*scl;
    y = y + yspeed*scl;

    //x = constrain(x, 0, width-scl);
    //y = constrain(y, 0, height-scl);
  }
 
 void display() {
  fill(0, 255, 0);
  for (PVector v : tail) {
      rect(v.x, v.y, 10, 10);
    }
  //noStroke();
  rect(x, y, 10, 10);
 }
 
 void lose() {
  if (snake.x > 505 || snake.x < -5) {
    s.display(); 
  }
   else if (snake.y > 505 || snake.y < -5) {
    s.display();     
   }
}
  void win() {
    if (s.score == target) {
        s.display();
      }
  }
 
}
