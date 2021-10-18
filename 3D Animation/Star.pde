class Star{
  float x, y,z, angle, angle2;
  
  Star(float x, float y, float z, float angle, float angle2){
    this.x = x;
    this.y = y;
    this.z = z;
    this.angle = angle;
    this.angle2 = angle2;
 
  }
  
  void animate(){
  //creates sphere object which rotates on its X
  translate(x,y,z);
  scale(.25);
  pushMatrix();
  fill(255,255,0);
  translate(300,450,80);
  stroke(204,204,0);
  rotateZ(angle);
  sphereDetail(20);
  sphere(100);
  
  //makes petas flash different colors 
  float R = random(255);
  float G = random(255);
  float B = random(255);
  fill(R,G,B);
  
  //makes petals unique sphere shape
  sphereDetail(8);
  
  //rotates petals around the center sphere of the flower 
  rotateY(angle2);
  
  //translates petals to the right location
  translate(-200,0,0);
  sphere(20);
  translate(50,0,0);
  sphere(20);
  translate(150,-200,0);
  sphere(20);
  translate(0,50,0);
  sphere(20);
  translate(200,150,0);
  sphere(20);
  translate(-50,0,0);
  sphere(20);
  translate(-150,200,0);
  sphere(20);
  translate(0,-50,0);
  sphere(20);
  
  //increments angles to rotate center sphere on z axis and petals around y axis
  angle += .05;
  angle2 += .1;
  popMatrix();
  
  }
}
