PImage[] clouds = new PImage[5];

//This is for background color
int Y_AXIS = 1;
int X_AXIS = 2;
color b1, b2;

// variables for quantity, xCoordinates, yCoordinates & movement across x-axis of clouds
int cloudsQuant = 1; // quantity of clouds
float[] xCoords = new float[cloudsQuant];
float[] yCoords = new float[cloudsQuant];
float[] xMove = new float[cloudsQuant];

int r; // variable to generate random clouds
int count = 0; // a counter
int fadeAway = 255; // controls "fading" effects

void setup() {
    size(1000, 1000);
    //define colors for gradient background
    b1 = color(139, 211, 242);
    b2 = color(212, 221, 198);

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
  for (int i=0; i<clouds.length; i++) {
    clouds[i] = loadImage(i+".png");
  }
  
}

void draw() {
    //gradient background
    setGradient(0, 0, 1000, 1000, b1, b2, Y_AXIS);
    setGradient(0, 1000, 1040, 1000, b2, b1, X_AXIS);

    // For loop to create clouds
    for (int i=0; i<cloudsQuant; i++) {
      // Create image from clouds array at random
      // xCoordinate and random yCoordinate       
      tint(255, fadeAway); // Controls fade of clouds
      image(clouds[r], xCoords[i], yCoords[i]); 
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

//gradient background
void setGradient(int x, int y, float w, float h, color b1, color b2, int axis ) {
    noFill();
    if (axis == Y_AXIS) {  // Top to bottom gradient
        for (int i = y; i <= y+h; i++) {
            float inter = map(i, y, y+h, 0, 1);
            color b = lerpColor(b1, b2, inter);
            stroke(b);
            line(x, i, x+w, i);
        }
    }
} 
