PShape wheelGroup1;
Wheel W1;
class Car {
  float x, y;
  Car other;
  color c;
  //color right;
  
  Car() {}
  
  Car(float x, float y, color c){
    this.x = x;
    this.y = y;
    this.c = c;
    //this.right = right;
    //this.other = other;
  }
  
  void move(){
    x+=1;
    //car.display();
  }
  
  void crash(Car other){
    if ( x < (width/2)-52){
      x+=2;
    }
    if (other.x > (width/2)+52){
      other.x-=2;
    }

  }

  
  void display(){
    PShape car = createShape(GROUP);
    //red part of the car body
    PShape body1 = createShape();
    body1.beginShape();
    body1.vertex(x-50, y+10);
    body1.vertex(x-50, y-10);
    body1.vertex(x+55, y-10);
    body1.vertex(x+55, y+10);
    body1.fill(c);
    body1.endShape();
    
    // top half of the car
    PShape body2 = createShape();
    body2.beginShape();
    body2.vertex(x+35, y-10);
    body2.vertex(x+15, y-25);
    body2.vertex(x-10, y-25);
    body2.vertex(x-30, y-10);
    body2.endShape();
    
    //part of the lights
    PShape curve = createShape();
    curve.beginShape();
    curve.vertex(x+45, y-10);
    curve.vertex(x+55, y);
    curve.curveVertex(x+45, y-10);
    curve.curveVertex(x+55, y);
    curve.endShape();
    
    PShape light = createShape(RECT, x+45, y-10, 10, 10);
    //also part of the lights
    
    
    PShape otherGroup = createShape(GROUP);
    otherGroup.addChild(light);
    
    car.addChild(body1);
    car.addChild(body2);
    car.addChild(otherGroup);
    car.addChild(curve);
    
    W1 = new Wheel(x,y);
    W1.display();
    
    shape(car);
    W1.display();
  }
  void displayOther(){
    //void display(){
    PShape car = createShape(GROUP);
    //red part of the car body
    PShape body1 = createShape();
    body1.beginShape();
    body1.vertex(x-50, y+10);
    body1.vertex(x-50, y-10);
    body1.vertex(x+55, y-10);
    body1.vertex(x+55, y+10);
    body1.fill(c);
    body1.endShape();
    
    // top half of the car
    PShape body2 = createShape();
    body2.beginShape();
    body2.vertex(x+35, y-10);
    body2.vertex(x+15, y-25);
    body2.vertex(x-10, y-25);
    body2.vertex(x-30, y-10);
    body2.endShape();
    
    //part of the lights
    PShape curve = createShape();
    curve.beginShape();
    curve.vertex(x-40, y-10);
    curve.vertex(x-50, y);
    curve.curveVertex(x-45, y-10);
    curve.curveVertex(x-55, y);
    curve.endShape();
    
    
    PShape light = createShape(RECT, x-50, y-10, 10, 10);

    
    PShape otherGroup = createShape(GROUP);
    otherGroup.addChild(light);
    
    car.addChild(body1);
    car.addChild(body2);
    car.addChild(otherGroup);
    car.addChild(curve);
    
    
    shape(car);
    
    W1 = new Wheel(x,y);
    W1.display();
    
  
  }
}
