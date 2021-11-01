Swing s1, s2;
PVector or1, or2;
color c1, c2;
SwingSet set;
float friction;

void setup(){
  size(1000,400);
  
  //Swing set
  or1 = new PVector(400, 100);
  or2 = new PVector(500, 100);
  s2 = new Swing(or2, PI/2, 150, 0.98, c1);
  s1 = new Swing(or1, PI/4, 150, 0.99, c1);
  set = new SwingSet(450, 100, 200, 25, 50, c2); 
}

void draw(){
  background(110);
  ellipseMode(RADIUS);
  
  s1.display();
  set.display();
  s2.display();
  s1.applyForces();
  s1.drag();
  s2.drag();
  s2.applyForces();
}

void mousePressed(){
  s1.clicked(mouseX, mouseY);
  s2.clicked(mouseX, mouseY);
}

void mouseReleased(){
  s1.stopDragging();
  s2.stopDragging();
}

class SwingSet{
  float x, y, h, w, l; color c;
  SwingSet (float x, float y, float h, float w, float l, color c){
    this.x = x;
    this.y = y;
    this.h = h;
    this.w = w;
    this.l = l;
    this.c = c;
  }
  void display(){
     fill(c);
     circle(this.x, this.y, this.l);
  }
}


class Swing{
  PVector origin, victor; float theta, len, angVelocity, angAcceleration, damp; color c;
  boolean dragging = false;
  
  Swing(PVector origin, float theta, float len, float damp, color c){
    this.origin = origin;
    this.victor = new PVector();
    this.theta = theta;
    this.len = len;
    this.c = c;
    this.angVelocity = 0;
    this.angAcceleration = 0;
    this.damp = damp;   
  }
  
  void display(){
    this.victor.set(this.len*sin(this.theta), this.len*cos(this.theta), 0);
    this.victor.add(this.origin);
    stroke(0);
    strokeWeight(2);
    line(this.origin.x, this.origin.y, this.victor.x, this.victor.y);
    fill(this.c);
    quad(this.victor.x-10, this.victor.y-30, this.victor.x, this.victor.y-7, this.victor.x-10, this.victor.y-7, this.victor.x-20, this.victor.y-30);
    rect(this.victor.x-10, this.victor.y-7, 30, 15);
    fill(150);
    if (dragging) {
      fill(0); 
    }
    ellipse(this.victor.x, this.victor.y, 10, 10);
  }
  void applyForces(){
    if (!dragging){
      float gravity = 0.4;
      this.angAcceleration = (-1 * gravity / this.len) * sin(this.theta);
      this.angVelocity += this.angAcceleration;
      this.angVelocity *= this.damp;
      this.theta += this.angVelocity;
    }
  }
  void clicked(int mx, int my){
    float d = dist(mx, my, this.victor.x, this.victor.y);
    if (d < 10){
      dragging = true; 
    }
  }
  
  void stopDragging(){
    if (dragging){
      angVelocity = 0;
      dragging = false;
    }
  }
  
  void drag() {
    if (dragging){
      PVector diff = PVector.sub(this.origin, new PVector(mouseX, mouseY));
      theta = atan2(-1*diff.y, diff.x) - radians(90);
    }
  }
}
