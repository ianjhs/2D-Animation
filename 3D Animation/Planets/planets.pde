Planet moon;
PImage moonTexture;
PImage planetTexture;

void setup() {
  size (700,700, P3D);
  beginCamera();
  camera();
  rotateX(PI/6);
  endCamera();
  moonTexture = loadImage("moontexture.jpeg");
  planetTexture = loadImage("planetTexture.jpeg");
  color x = color(252, 202, 3);
  moon = new Planet(50, 0, x, moonTexture);
  moon.createPlanets(1);
}

void draw(){
  background(0);
  lights();
  translate(width/4, height/4);
  moon.display();
  moon.orbit();
}

class Planet {
  float radius;
  float angle;
  float distance;
  Planet[] planets;
  float speed;
  PVector v;
  color pcolor;
  
  PShape globe;
  
  Planet(float r, float d, color planetcolor, PImage img) {
    radius = r;
    angle = random(TWO_PI);
    distance = d; //distance from the 
    angle = 0;
    speed = random(0.01, 0.05);
    pcolor = planetcolor;
    pcolor = color(random(148,255), random(153,212), 255);
    
    noStroke();
    noFill();
    globe = createShape(SPHERE, radius);
    globe.setTexture(img);
  }
  
  void createPlanets(int total){
    planets = new Planet[total];
    for (int i = 0; i < planets.length; i++) {
       float r = radius*0.5;
       float d = random(75, 150);
       color planetcolor = color(random(148,255), random(153,212), 255);
       planets[i] = new Planet(r,d, planetcolor, planetTexture);
    } 
  }
  
  void orbit(){
    angle += speed;
    if (planets != null){
      for (int i = 0; i < planets.length; i++) {
        planets[i].orbit();
      }
    }
  }
  
  void display(){
    pushMatrix();
    noStroke();
    fill(pcolor);
    
    translate(width/5, height/5, 0);
    rotate(float(frameCount)/ width);
    rotate(float(frameCount) /200);
    shape(globe);
    
    
    if (planets != null){
      for (int i = 0; i < planets.length; i++) {
        planets[i].display();
    }
  }
  popMatrix();
  }
}
