class UFO {
  float X_translate, Y_translate, Z_translate, X_speed, Y_speed, Z_speed, r, inc, M_width;
  PShape ufo, SpehereObject;
  
  UFO (color c1, float X_s, float Y_s, float Z_s, float M_radius, float miss_width) {
    X_translate = 0;
    Y_translate = 0;
    Z_translate = 0;
    X_speed = X_s;
    Y_speed = Y_s;
    Z_speed = Z_s;
    M_width = miss_width;
    inc = 0;
    
    ufo = loadShape("UFO_copy.obj");
    ufo.scale(25);
    
    SpehereObject = createShape(SPHERE, M_radius);
    SpehereObject.setFill(c1);
    SpehereObject.setStroke(false);
    translate(width/2, height/2);
    ufo.rotateX(PI);
  }
  void move() {
    smooth();
    translate((width/2) + (250*sin(X_translate)), (height/2) + (250*sin(Y_translate)), 200*sin(Z_translate));
    shape(ufo, 0, 0);
    translate(M_width*sin(inc), 0, M_width*cos(inc));
    shape(SpehereObject, 0, 0);
    inc += 0.04;
    X_translate += X_speed*5;
    Y_translate += Y_speed*5;
    Z_translate += Z_speed*5;
  }
   
}
