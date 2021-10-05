Car car;
Car other;

void setup() {
  size(1000,1000);
  car = new Car(0,height/2);
  //pushMatrix();
  //scale(2);
  other = new Car(width, height/2);
  
}
void draw(){
    car.crash(other);
    background(255);
    //scale(.5);
    car.display();
    //scale(.5);
    other.displayOther();
 }
