class Moon {
  float radius;
  float angle;
  float distance;
  Moon[] moon;
  float speed;
  PVector v;
  color pcolor;
  
  PShape globe;
  
  Moon(float r, float d, color planetcolor, PImage img) {
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
  
  void createMoon(int total){
    moon = new Moon[total];
    for (int i = 0; i < moon.length; i++) {
       float r = radius*0.5;
       float d = random(75, 150);
       color planetcolor = color(random(148,255), random(153,212), 255);
       moon[i] = new Moon(r,d, planetcolor, planetTexture);
    } 
  }
  
  void orbit(){
    angle += speed;
    if (moon != null){
      for (int i = 0; i < moon.length; i++) {
        moon[i].orbit();
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
    
    
    if (moon != null){
      for (int i = 0; i < moon.length; i++) {
        moon[i].display();
    }
  }
  popMatrix();
  }
}
