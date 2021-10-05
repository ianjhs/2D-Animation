Car car;
Car other;

void setup() {
  size(1000,1000);
  int x= 100;
  car = new Car(0,height/2);
  other = new Car(width, height/2);
}
void draw(){
    //int x= 100;
    //x+=1;
    //car.move();
    car.crash(other);
    background(255);
    car.display();
    //scale(-1);
    other.displayOther();
    scale(-1,1);
    //car.rotateTires();
    //car.displayWheels();
    //car.crash();
    //car.move();
    //car.move();
    //car.move();
 }
