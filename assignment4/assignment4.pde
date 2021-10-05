Star star;
Star star2;
Tree tr;
Tree tr2;
Car car;
Car other;
Cloud cloud;

import processing.sound.*;
SoundFile file;

void setup() {
  size(1000,1000);
  
   //play tokyo drift
  //file = new SoundFile(this, "sound.wav");
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
  car = new Car(0,height/2, #FA0000);
  other = new Car(width, height/2, #3136FF);
  
 
  
  
  // tree class
  tr = new Tree(650,200,0,1000,800);
  tr2 = new Tree(150,200,0,800,600);
  

  //cloud class
  cloud = new Cloud(1, 0, 0, 255 );
  cloud.setcloud();
  
  

}

void draw() {
  background_draw();
  
  //animate trees
  tr.animate();
  tr2.animate();
 
 
  cloud.display();
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
  
  //animate clouds
  //cloud.animate();
  
}

void background_draw() {
  // background is reset to give appearance of movement
  stroke(0);
  fill(#87CEEB);
  rect(0,0,1000,500);
  fill(#FAF2C3);
  rect(0,500,1000,500);
}
