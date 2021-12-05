class MenuButton extends RectangleButton {
  boolean isChecked;
  
  MenuButton(float x, float y, float w, float h) {
    super(x, y, w, h);
  }
  
  boolean isChecked() {
    return isChecked;
  }
  
  // Overriding from Button class
  void registerMousePress(PVector mousePoint) {
    if (buttonClicked(mousePoint)) {
      setPressed();
      mainMenu.display();
      cp5.get(Textfield.class, "Name").setVisible(true);
      buttonOn = true;
    } else {
      forgetMousePress();
    }
    button1On = false;
  }
}
