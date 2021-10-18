float angle = 0;
Planet planet;

void setup() {
  size(500,500, P3D);
  planet = new Planet(color(200,200,0));
}

void draw() {
  background(0);
  planet.show();
  planet.rotateEarth();
}
