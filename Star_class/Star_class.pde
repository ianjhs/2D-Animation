Star star;
Star star2;

void setup() {
  size(1000, 1000);
  
  star = new Star();
  star.bound = 20;
  star.twinkle = 60;
  star.radius = 25;
  star.numRays = 100;
  star.angle = TWO_PI/(float)star.numRays;
  star.x = 500;
  star.y = 500;
  star.a = 0.0;
  star.s = 0.0;
  
  star2 = new Star();
  star2.bound = 10;
  star2.twinkle = 30;
  star2.radius = 10;
  star2.numRays = 50;
  star2.angle = TWO_PI/(float)star2.numRays;
  star2.x = 200;
  star2.y = 200;
  star2.a = 0.0;
  star2.s = 0.0;
  
}

void draw(){
  background(51);
  star.createEllipse();
  star.createRays();
  
  star2.createEllipse();
  star2.createRays();
}

class Star {
  int bound;
  int twinkle;
  float radius;
  int numRays;
  float angle;
  int x,y;
  float a, s;
  
  Star(){}
  
  //bound = how far the star will come forward, twinkle = how big the star is
  Star(int bound, int twinkle, float radius, int numRays, float angle, int x, int y, float a, float s){
    this.bound = bound;
    this.twinkle = twinkle;
    this.radius = radius;
    this.numRays = numRays;
    this.angle = angle;
    this.x = x;
    this.y = y;
    this.a = a;
    this.s = s;
    
  }
  
  //Create the rays
  void createRays(){
    for(int i=0;i<numRays;i++){
        radius = bound - (int)random(0, twinkle);
        line(0, 0, radius*sin(angle*i),radius*cos(angle*i));
    }
  }
  
  //Create the circle and scale, translate it
  void createEllipse(){
    ellipseMode(CENTER);
    a = a + 0.04;
    s = sin(a);
 
    translate(x,y);
    scale(s);
    fill(50, 62, 168);
    stroke(113, 150, 199);
    ellipse(0, 0, radius, radius); 
    
  }
    
    
}
