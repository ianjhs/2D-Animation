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
    x+=1;
    display();
    //for (int i = 0; i < 7; i++) {
    //  particles.add(new Particle(x,y,1,1));
    //}
    //var h = new Particle(x,y,1);
    
    //h.x +=1;
    //h.display();
  }  
}
