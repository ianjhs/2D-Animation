class RestartButton extends RectangleButton {
  boolean isChecked;
  
  RestartButton(float x, float y, float w, float h) {
    super(x, y, w, h);
  }
  
  boolean isChecked() {
    return isChecked;
  }
  
  // Overriding from Button class
  void registerMousePress(PVector mousePoint) {
    if (buttonClicked(mousePoint)) {
      setPressed();
      startGame();
    } else {
      forgetMousePress();
    }
    button1On = false;
  }
}
