Star star1;


void setup() {
  size(1000, 1000, P3D);
  //initiate camera angle
  camera(-500, -100, 500, 0, 0, 0, 0, 1, 0);
  //create an object of each class
  
  star1 = new Star(100,100,100,0,0);
  
}

void draw() {
  background(204, 229, 255);
  
  star1.animate();
}
