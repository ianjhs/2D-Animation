//extended and added onto button from class
class Button {
  boolean isPressed;

  Button() {
    forgetMousePress();
  }
  
  boolean isPressed() { 
  return isPressed;
  }
  
  boolean buttonClicked(PVector mousePoint) { 
  return false;
  }
  
  void display() {
  }
  
  void registerMousePress(PVector mousePoint) {
    if (buttonClicked(mousePoint)) {
      setPressed();
      startGame();
    } else {
      forgetMousePress();
    }
  }
  
  void setPressed() { 
  isPressed = true;
  }
  
  void forgetMousePress() {
  isPressed = false;
  }
  void startGame(){
    print("game started ");

    //add code to start game 
  //  if (keyPressed) {
        //if (key == ' ') {
          reset_snek();
          snake.total = 0;
          s.score = 0;
          frameRate(20);
        }
}
