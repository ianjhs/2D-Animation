Star star1;
int z = 100;

void setup() {
  size(1000, 1000, P3D);
  //initiate camera angle
  camera(-500, -100, 500, 0, 0, 0, 0, 1, 0);
  //create an object of each class
  
  star1 = new Star(100,100,100,0,0);
  
}

void draw() {
  background(204, 229, 255);
  if (keyPressed) {
    if (keyCode == UP) {
      z += 6;
    } else if (keyCode == DOWN) {
      z -= 6;
    }
  }
  
  camera(690, 360, z, // position of the camera
          0, 0, 0, // where the camera is looking
          0, 1, 0); // vector (what is up relative to the camera)
  
          
  // moves camera on x and y position by holding key and moving mouse
  if (keyPressed) {
    if (key == 'y') {
      camera(690, mouseY, z, 0, 0, 0, 0, 1, 0);
    } else if (key == 'x') {
      camera(mouseX, 360, z, 0, 0, 0, 0, 1, 0);
    }
  }
  
  star1.animate();
}
