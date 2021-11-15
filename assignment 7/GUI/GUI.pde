Screen s;
Button button;
PVector mousePoint;
import controlP5.*;
void setup() {
  size(500, 500);
  s = new Screen(100,150,300,200);
  background(255);

}
void draw() {
  //add function to start game to the startGame()  function in the button class
  //when game is over, set changeStatus to true for win or false for loss 
  // then use changeScore to add the final score to the GUI and display the screen with display function
  s.display();
  s.changeScore(30);
  s.changeStatus(false);
}

void mousePressed(){
  PVector mousePoint = new PVector(mouseX, mouseY);
  button.registerMousePress(mousePoint);
}
