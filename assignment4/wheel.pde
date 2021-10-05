class Wheel{ 
    float x,y;
    Wheel () {}
    
    Wheel(float x, float y){
      this.x = x;
      this.y = y;
    }
    
    void display(){
    PShape line = createShape(LINE, x-25, y+5, x-25, y+15);
    PShape line2 = createShape(LINE, x-30, y+10, x-20, y+10);
    
    //groups containing wheels
    PShape wheelGroup1 = createShape(GROUP);
    PShape wheelGroup2 = createShape(GROUP);
    
    //outside of left wheel
    PShape wheel1 = createShape(ELLIPSE, x-25, y+10, 20, 20);
    wheel1.setFill(color(0));
    //inside of left wheel
    PShape wheelInside = createShape(ELLIPSE, x-25, y+10, 10, 10);
    //outside of right wheel
    PShape wheel2 = createShape(ELLIPSE, x+30, y+10, 20, 20);
    wheel2.setFill(color(0));
    //inside of right wheel
    PShape wheelInside2 = createShape(ELLIPSE, x+30, y+10, 10, 10);
    
    //other parts of wheel
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
    
    shape(wheelGroup1);
    shape(wheelGroup2);
    }
}
