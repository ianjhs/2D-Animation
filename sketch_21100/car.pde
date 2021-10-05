PShape wheelGroup1;
class Car {
  float x, y;
  Car other;
  
  Car() {}
  
  Car(float x, float y){
    this.x = x;
    this.y = y;
    //this.other = other;
  }
  
  void move(){
    x+=1;
    //car.display();
  }
  
  void crash(Car other){
    if ( x < (width/2)-52){
      x+=1;
    }
    if (other.x > (width/2)+52){
      other.x-=1;
    }
  
    //car.display();
  }
 // void rotateTires(){
 //   loadShape("wheelGroup1")                                                                                                                                                                                                             ");
 //   translate(5,700);
 //}
  
  
  void display(){
    PShape car = createShape(GROUP);
    //red part of the car body
    PShape body1 = createShape();
    body1.beginShape();
    body1.vertex(x-50, y+10);
    body1.vertex(x-50, y-10);
    body1.vertex(x+55, y-10);
    body1.vertex(x+55, y+10);
    body1.fill(255,70,60);
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
    
    //also part of the lights
    PShape line = createShape(LINE, x-25, y+5, x-25, y+15);
    PShape line2 = createShape(LINE, x-30, y+10, x-20, y+10);
    
    //groups containing wheels
    PShape wheelGroup1 = createShape(GROUP);
    PShape wheelGroup2 = createShape(GROUP);
    
    //outside of left wheel
    PShape wheel1 = createShape(ELLIPSE, x-25, y+10, 20, 20);
    wheel1.setFill(color(20));
    //inside of left wheel
    PShape wheelInside = createShape(ELLIPSE, x-25, y+10, 10, 10);
    //outside of right wheel
    PShape wheel2 = createShape(ELLIPSE, x+30, y+10, 20, 20);
    wheel2.setFill(color(20));
    //inside of right wheel
    PShape wheelInside2 = createShape(ELLIPSE, x+30, y+10, 10, 10);
    
    //other parts of lights
    PShape light = createShape(RECT, x+45, y-10, 10, 10);
    PShape line1 = createShape(LINE, x+30, y+5, x+30, y+15);
    PShape line1_2 = createShape(LINE, x+25, y+10, x+35, y+10);
    
    
    
    
    wheelGroup1.addChild(wheel1);
    wheelGroup1.addChild(wheelInside);
    wheelGroup1.addChild(line);
    wheelGroup1.addChild(line2);
    
    wheelGroup2.addChild(wheel2);
    wheelGroup2.addChild(wheelInside2);
    wheelGroup2.addChild(line1);
    wheelGroup2.addChild(line1_2);
    
    PShape otherGroup = createShape(GROUP);
    otherGroup.addChild(light);
    
    car.addChild(body1);
    car.addChild(body2);
    car.addChild(wheelGroup1);
    //rotate(2);
    car.addChild(wheelGroup2);
    car.addChild(otherGroup);
    car.addChild(curve);
    
    shape(car);
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
    body1.fill(255,70,60);
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
    
    //also part of the lights
    PShape line = createShape(LINE, x-25, y+5, x-25, y+15);
    PShape line2 = createShape(LINE, x-30, y+10, x-20, y+10);
    
    //groups containing wheels
    PShape wheelGroup1 = createShape(GROUP);
    PShape wheelGroup2 = createShape(GROUP);
    
    //outside of left wheel
    PShape wheel1 = createShape(ELLIPSE, x-25, y+10, 20, 20);
    wheel1.setFill(color(20));
    //inside of left wheel
    PShape wheelInside = createShape(ELLIPSE, x-25, y+10, 10, 10);
    //outside of right wheel
    PShape wheel2 = createShape(ELLIPSE, x+30, y+10, 20, 20);
    wheel2.setFill(color(20));
    //inside of right wheel
    PShape wheelInside2 = createShape(ELLIPSE, x+30, y+10, 10, 10);
    
    //other parts of lights
    PShape light = createShape(RECT, x-50, y-10, 10, 10);
    PShape line1 = createShape(LINE, x+30, y+5, x+30, y+15);
    PShape line1_2 = createShape(LINE, x+25, y+10, x+35, y+10);
    
    
    
    
    wheelGroup1.addChild(wheel1);
    wheelGroup1.addChild(wheelInside);
    wheelGroup1.addChild(line);
    wheelGroup1.addChild(line2);
    
    wheelGroup2.addChild(wheel2);
    wheelGroup2.addChild(wheelInside2);
    wheelGroup2.addChild(line1);
    wheelGroup2.addChild(line1_2);
    
    PShape otherGroup = createShape(GROUP);
    otherGroup.addChild(light);
    
    car.addChild(body1);
    car.addChild(body2);
    car.addChild(wheelGroup1);
    //rotate(2);
    car.addChild(wheelGroup2);
    car.addChild(otherGroup);
    car.addChild(curve);
    
    shape(car);
  }
}
