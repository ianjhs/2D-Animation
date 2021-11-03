Swing s1, s2;
PVector or1, or2;
color c1, c2;
SwingSet set;
float friction;

Ball ball;
Ball ball2;
PShape soccer;

Particle p;
Particle p1;
Particle p2;
Particle p3;
Particle p4;
Particle p5;
Particle p6;
ArrayList<Particle> particles;
float x = 250;
float y = 120;
float x1 = x;
float y1 = y;
float x2 = x;
float y2 = y;
float x3 = x;
float y3 = y;
float x4 = x;
float y4 = y;
float Xmax = x+20;
float Ymax = y+20;
float Xmin = x-20;
float Ymin = y-20;
float velocity1 = 1;
float velocity2 = 1;
float velocity3 = 1;
float velocity4 = 1;

Flock flock;

void setup(){
  size(1000,400);
  
  //Swing set
  or1 = new PVector(400, 100);
  or2 = new PVector(500, 100);
  s2 = new Swing(or2, PI/2, 150, 0.98, c1);
  s1 = new Swing(or1, PI/4, 150, 0.99, c1);
  set = new SwingSet(450, 100, 200, 25, 50, c2); 
  
  //Ball
  //soccer = loadShape("soccer.jpg");
  ball = new Ball(200, 200);
  ball2 = new Ball(400, 400);
  
  //Firework
  p = new Particle(500,500, 4);
  
  //Bird Flock
  flock = new Flock();
  // Add an initial set of boids into the system
  for (int i = 0; i < 150; i++) {
    flock.addBoid(new Boid(width/2,height/2));
  }
}

void draw(){
  background(110);
  flock.run();
  
  
  s1.display();
  set.display();
  s2.display();
  s1.applyForces();
  s1.drag();
  s2.drag();
  s2.applyForces();
  
  if (mousePressed) {
    PVector wind = new PVector(0.3, 0);
    ball.applyForce(wind);
    ball2.applyForce(wind);
    
    // Add a new boid into the System
    flock.addBoid(new Boid(mouseX,mouseY));
  }

  PVector gravity = new PVector(0, 0.2);
  ball.applyForce(gravity);
  ball2.applyForce(gravity);

  ball.update();
  ball.edges();
  ball.show();
  
  ball2.update();
  ball2.edges();
  ball2.show();
  
  keyPressed();
}

void keyPressed(){
  if(key == '1'){
    p.setOff(x,y);
  }
  /*if(key == '1'){
      x = 250;
      y = 70;
      x1 = x;
      y1 = y;
      x2 = x;
      y2 = y;
      x3 = x;
      y3 = y;
      x4 = x;
      y4 = y;
      Xmax = x+10;
      Ymax = y+10;
      Xmin = x-10;
      Ymin = y-10;
      p.setOff(x,y);
      //print(x1,y1);
  }*/
  
  
  
  //p.display();
  p1 = new Particle(x1,y1, 2);
  p2 = new Particle(x2,y2, 2);
  p3 = new Particle(x3,y3, 2);
  p4 = new Particle(x4,y4, 2);
  
  
  
  if (p.isSetOff(x,y) && y1 > Ymin) {
    y1-=velocity1;
    p1.display();
    y1 = addGravity(x1,y1);
  }
  if (p.isSetOff(x,y) && x2 < Xmax) {
    x2+=velocity2;
    p2.display();
    y2 = addGravity(x2,y2);
  }
  if (p.isSetOff(x,y) && x3 > Xmin) {
    x3-=velocity3;
    p3.display();
    y3 = addGravity(x3,y3);
  }
  if (p.isSetOff(x,y) && y4 < Ymax) {
    y4+=velocity4;
    p4.display();
    y4 = addGravity(x4,y4);
  }
}
float addGravity(float x, float y){
  y += .25;
  return y;
}
