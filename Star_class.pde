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
