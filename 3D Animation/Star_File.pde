Star star1;
int z = 100;
float angle = 0;
Planet planet;
Moon moon;
PImage moonTexture;
PImage planetTexture;

void setup() {
  size(1200, 1200, P3D);
  //initiate camera angle
  //camera(-500, -100, 500, 0, 0, 0, 0, 1, 0);
  //camera();
  //create an object of each class
  beginCamera();
  camera();
  rotateX(PI/6);
  endCamera();
  moonTexture = loadImage("moontexture.jpeg");
  planetTexture = loadImage("planetTexture.jpeg");
  color x = color(252, 202, 3);
  moon = new Moon(50, 0, x, moonTexture);
  moon.createMoon(1);
  
  star1 = new Star(100,100,100,0,0);
  planet = new Planet(color(200,200,0));
  frameRate(60);
  
}

void draw() {
  background(0);
  
  lights();
  translate(50, 100);
  moon.display();
  moon.orbit();
   
  planet.show();
  
  planet.rotateEarth();
 
  star1.animate(); 
  
}
