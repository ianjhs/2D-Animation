class Tree { 
 float x, y,angle;
 PVector speed;
 PShape trunk;
 PShape leaves;
 PShape coconut;
 int sign = 1;
 float newX = 0;
 float sizeX, sizeY;
 
 Tree(float x, float y, float angle, float sizeX, float sizeY) {
   this.x = x;
   this.y = y;
   this.angle = angle;
   this.sizeX = sizeX;
   this.sizeY = sizeY;
   trunk = loadShape("trunk.svg");
   leaves = loadShape("leaves.svg");
   coconut = loadShape("coconuts.svg");
 }
 
 void display() {
   
  pushMatrix();
  translate(x,y);
  //tree trunk
  fill(160,82,45);
  stroke(101, 67, 33);
  //using disable style to disable svg style so i can color in svg
  trunk.disableStyle();
  shape(trunk,0,0,sizeX, sizeY);
  
  //leaves
  fill(50,205,50);
  stroke(34,139,34);
  strokeWeight(4);
  leaves.disableStyle();
  translate(newX,0);
  shape(leaves,0,0,sizeX,sizeY);
  
  pushMatrix();
  //move coconuts to center of tree
  translate(140,110);
  //rotate coconuts
  rotate(angle);
  shape(coconut,0,0,sizeX, sizeY);
  angle += .1;
  popMatrix();
  popMatrix();
   
 }

 void move() {
   //shake leaves and coconuts
   if (newX >= 0){
    sign = -1;
   }
   else{
     sign = 1;
   }
   newX = 5 * sign;
 }
 void animate() {
    display();
    move();
  }
}
