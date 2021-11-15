PVector food;
int siz = 20;

void setup(){
  size(500,500);
  int cols = floor(width/siz);
  int rows = floor(height/siz);
  food = new PVector(floor(random(cols)), floor(random(rows)));
  food.mult(siz);
}


void draw(){
  background(50);
  fill(255, 69, 0);
  rect(food.x, food.y, siz, siz);
}
