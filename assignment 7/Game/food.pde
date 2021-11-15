class food {
  int x;
  int y;
  int size;
 
  public food(int x, int y) {
    this.x = x;
    this.y = y;
    size=10;
  }
  void show() {
    fill(255, 0, 0);
    ellipseMode(CORNER);
    ellipse(x, y, size, size);
  }
}
