Ball ball;
Ball ball2;
PShape soccer;

void setup() {
  size(500, 500, P3D);
  soccer = loadShape("soccer.jpg");
  ball = new Ball(200, 200);
  ball2 = new Ball(400, 400);
}

void draw() {
  background(52, 189, 235);

  if (mousePressed) {
    PVector wind = new PVector(0.3, 0);
    ball.applyForce(wind);
    ball2.applyForce(wind);
  }

  PVector gravity = new PVector(0, 0.2);
  ball.applyForce(gravity);
  ball2.applyForce(gravity);

  ball.update();
  ball.edges();
  ball.show();
  
  ball2.update();
  ball2.edges();
  ball2.show();
}

class Ball {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float r;
  
  Ball(float x, float y) {
    position = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    r = 16;
    
  }

  void applyForce(PVector force) {
    acceleration.add(force);
  }

  void edges() {
    if (position.y >= height - r) {
      position.y = height - r;
      velocity.y *= -1;
    }

    if (position.x >= width - r) {
      position.x = width - r;
      velocity.x *= -1;
    } else if (position.x <= r) {
      position.x = r;
      velocity.x *= -1;
    }
  }

  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.set(0, 0);
  }

  void show() {
    noStroke();
    fill(235, 134, 52);
    //shape(soccer, position.x, position.y);
    ellipse(position.x, position.y, r * 2, r*2);
    //translate(width/4, height/4);
    //sphere(r);
  }
}
