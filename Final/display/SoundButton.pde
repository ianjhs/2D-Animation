class SoundButton extends RectangleButton {
  boolean isChecked;
  
  SoundButton(float x, float y, float w, float h) {
    super(x, y, w, h);
  }
  
  boolean isChecked() {
    return isChecked;
  }
  
  // Overriding from Button class
  void registerMousePress(PVector mousePoint) {
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
  }
}
