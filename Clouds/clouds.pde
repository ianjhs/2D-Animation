Cloud cloud;
Gradient gradient;
Gradient gradient2;

void setup() {
    size(1000, 1000);
    gradient = new Gradient(0, 0, 1000, 1000, color(139, 211, 242), color(212, 221, 198), 1 );
    gradient2 = new Gradient(0, 1000, 1040, 1000, color(139, 211, 242), color(212, 221, 198), 2);   
    cloud = new Cloud(1, 0, 0, 255 );
    cloud.setcloud();
}

void draw() {
    //gradient background
    gradient.setGradient();
    gradient2.setGradient();
    cloud.display();
}

class Cloud {
  int cloudsQuant;
  float[] xCoords;
  float[] yCoords;
  float[] xMove;
  int r; 
  int count;
  int fadeAway;
  PImage[] img;
     
  Cloud(int cloudsQuant, int r, int count, int fadeAway) {
    this.cloudsQuant = cloudsQuant;
    this.xCoords = new float[cloudsQuant];
    this.yCoords = new float[cloudsQuant];
    this.xMove = new float[cloudsQuant];
    this.r = r;
    this.count = count;
    this.fadeAway = fadeAway;
    this.img = new PImage[5];    
}
  
   void setcloud(){
    smooth();
    noStroke();

    // For loop that generates clouds at a random width coordinate
    // and a y-coordinate from 0-300
    for (int i=0; i < cloudsQuant; i++) {
      xCoords[i] = random(width);
      yCoords[i] = random(300);
      xMove[i] = 4; // moves a cloud at speed of 4
  }
  
    // Clouds array (loads all 5 cloud images)
    for (int i=0; i<img.length; i++) {
      img[i] = loadImage(i+".png");  
  }     
 }
 
 void display(){
   // For loop to create clouds
    for (int i=0; i<cloudsQuant; i++) {
      // Create image from clouds array at random
      // xCoordinate and random yCoordinate       
      tint(255, fadeAway); // Controls fade of clouds
      image(img[r], xCoords[i], yCoords[i]); 
      xCoords[i] += xMove[i]; // Move the cloud
  
      // If the clouds move past the width of the window then...
      if (xCoords[i] > width) {
        xCoords[i] = random(0); // respawn at random point where x=0
        yCoords[i] = random(300); // respawn at random point where y<300
        r = int(random(5)); // respawn a random cloud
        count += 1; // Add 1 to "count" 
      }
      if (count%2 == 0) {
        fadeAway += 3;
      }
      else {
        fadeAway -= 3;
    }
    }
 }  
}

//gradient background
class Gradient {
  int x;
  int y;
  float w;
  float h;
  color b1;
  color b2;
  int axis;
  
  Gradient(int x, int y, float w, float h, color b1, color b2, int axis ) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.b1 = b1;
    this.b2 = b2;
    this.axis = axis;
  }
  
  void setGradient() {    
      noFill();
      int Y_AXIS = 1;
      if (axis == Y_AXIS) {  // Top to bottom gradient
          for (int i = y; i <= y+h; i++) {
              float inter = map(i, y, y+h, 0, 1);
              color b = lerpColor(b1, b2, inter);
              stroke(b);
              line(x, i, x+w, i);
          }
      }
  }
}
