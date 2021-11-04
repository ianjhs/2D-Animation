float acceleration = .1;

class Particle{
  float x, y;
  float vx, vy;
  float r;
  float vel = 100;
  int randR = (int)random(255);
  int randG = (int)random(255);
  int randB = (int)random(255);
  
  Particle(float _x, float _y, float _r) {
    x = _x;
    y = _y;
    r = _r;
  }
  
  void setOff(float targetX, float targetY){
    x = targetX;
    if (y>targetY){
      y-=4;
    }
    if (y == targetY) {
      explode();
    }
    fill(randR,randG,randB);
    ellipse(x,y,r,r);
  }
  
  boolean isSetOff(float targetX, float targetY){
    if (y==targetY){
      return true;
    }
    else {
      return false;
    }
  }
  
  
  void display() {
    
    fill(randR, randG, randB);
    ellipse(x,y,r,r);
    
  }
  void explode(){
    p1 = new Particle(x1,y1, 5);
    p2 = new Particle(x2,y2, 5);
    p3 = new Particle(x3,y3, 5);
    p4 = new Particle(x4,y4, 5);
    
    
    
    if (p.isSetOff(x,y) && y1 < Ymax) {
      y1-=velocity1;
      p1.display();
      y1 = addGravity(x1,y1);
      velocity1 = addGravity1(y1, velocity1);
    }
    if (p.isSetOff(x,y) && x2 < Xmax) {
      x2+=velocity2;
      p2.display();
      y2 = addGravity(x2,y2);
      velocity3 = addGravity(x2, velocity2);
    }
    if (p.isSetOff(x,y) && x3 > Xmin) {
      x3-=velocity3;
      p3.display();
      y3 = addGravity(x3,y3);
      velocity3 = addGravity(x3, velocity3);
    }
    if (p.isSetOff(x,y) && y4 < Ymax) {
      y4+=velocity4;
      p4.display();
      y4 = addGravity(x4,y4);
      velocity4 = addGravity1(y4, velocity4);
  }
  }
  float addGravity1(float y, float velocity){
    if (velocity>0){
      velocity -= acceleration;
      //y -= velocity;
      print(velocity);
      return velocity;
    }
    else{
      return 0;
}
}
  float addGravity(float x, float y){
    y += .25;
    return y;
}
}
