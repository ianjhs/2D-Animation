//extended and added onto button from class
boolean sound;
class Button {
  boolean isPressed;

  Button() {
    forgetMousePress();
  }
  
  boolean isPressed() { 
  return isPressed;
  }
  boolean isOnButton(PVector mousePoint) { return false; }
  
  boolean buttonClicked(PVector mousePoint) { 
  return false;
  }
  
  void display() {
  }
  
  void registerMousePress(PVector mousePoint) {
    if (buttonClicked(mousePoint)) {
      setPressed();
      startGame();
      name = cp5.get(Textfield.class, "Name").getText();
      print(name);
      //mainMenu.start_game();
    } else {
      forgetMousePress();
    }
  }
  /*void registerMousePressSound(PVector mousePoint) {
    if (buttonClicked(mousePoint)) {
      setPressed();
      //startGame();
      print(" sound");
      //print(sound);
      if (sound == true){
        
        print(" on");
        //turn on sound here
        sound = false;
      }
      else if (sound == false) {
        
        print(" off");
        //turn off sound here
        sound = true;
      }
    } else {
      forgetMousePress();
    }
  }*/
  
  /*void registerMousePressMenu(PVector mousePoint) {
    if (buttonClicked(mousePoint)) {
      setPressed();
      //startGame();
      print(" lesss go");
      //print(sound);
      if (sound == true){
        
        print(" on");
        //turn on sound here
        sound = false;
      }
      else if (sound == false) {
        
        print(" off");
        //turn off sound here
        sound = true;
      }
    } else {
      forgetMousePress();
    }
  }*/
  
  void setPressed() { 
  isPressed = true;
  }
  
  void forgetMousePress() {
  isPressed = false;
  }
  void startGame(){
    //print("game started ");
    startStop = true;
    //mainMenu.start_game();
    

    //add code to start game 
  //  if (keyPressed) {
        //if (key == ' ') {
          reset_snek();
          snake.total = 0;
          s.score = 0;
          frameRate(20);
        }
}
