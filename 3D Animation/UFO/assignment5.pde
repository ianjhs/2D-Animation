UFO one;

void setup() {
  one = new UFO( color(#B44242), .03, .015, .01, 5, 100);
  size(1100, 800, P3D);
  translate(width/2, height/2);
}

void draw() {
  background(0);
  smooth();
  one.move();
}
