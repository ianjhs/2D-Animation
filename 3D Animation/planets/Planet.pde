PShape earth;
PShape sun;
class Planet{
  color c;
  
  Planet() {}
  
  Planet(color c){
    this.c = c;
  }
  void show(){
    translate(width/2, height/2);
    PImage s1 = loadImage("sun1.jpg");
    sun = createShape(SPHERE, 50);
    sun.setTexture(s1);
    shape(sun);
    pointLight(255,255,255, 0 ,0 ,0);
    ambientLight(255, 255, 255);
  }
  void rotateEarth() {
  pushMatrix();
  rotate(angle);
  translate(140, 0);
  noStroke();
  PImage img = loadImage("earth.jpg");
  earth = createShape(SPHERE, 30);
  earth.setTexture(img); 
  shape(earth);
  popMatrix();

  angle += 0.01;
}
}
