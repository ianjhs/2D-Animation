Star star;
Star star2;
Tree pt;
Tree pt2;
Car car;
Car other;


import processing.sound.*;
SoundFile file;

void setup() {
  size(1000,1000);
  
   //play pina colada song
  //file = new SoundFile(this, "sound.mp3");
  //file.play();
  
  //star class
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
  
  //car class
  car = new Car(0,height/2);
  other = new Car(width, height/2);
  
 
  
  
  // tree class
  pt = new Tree(650,200,0,1000,800);
  pt2 = new Tree(150,200,0,800,600);
  

  

}

void draw() {
  background_draw();
  
  //animate trees
  pt.animate();
  pt2.animate();
 
 
  
  //animate cars
  car.crash(other);    
  //scale(.5);
  car.display();
  //scale(.5);
  other.displayOther();
    
  //animate star 1
  star.createEllipse();
  star.createRays();
  
  //animate star2
  star2.createEllipse();
  star2.createRays();
}

void background_draw() {
  // background is reset to give appearance of movement
  stroke(0);
  fill(#87CEEB);
  rect(0,0,1000,500);
  fill(#FAF2C3);
  rect(0,500,1000,500);
}
