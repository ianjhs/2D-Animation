float angle = 0;
Sun planet;

void setup() {
  size(500,500, P3D);
  sun = new Sun(color(200,200,0));
}

void draw() {
  background(0);
  sun.show();
  sun.rotateEarth();
}
