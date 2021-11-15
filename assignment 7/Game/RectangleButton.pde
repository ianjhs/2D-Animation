//extended and added onto RectangleButton from class
class RectangleButton extends Button {
  PVector topLeft;
  float rectWidth;
  float rectHeight;
  
  RectangleButton(float topLeftX, float topLeftY, float rectWidth, float rectHeight) {
    super();
    topLeft = new PVector(topLeftX, topLeftY);
    this.rectWidth = rectWidth;
    this.rectHeight = rectHeight;
  }
  
  boolean buttonClicked(PVector mousePoint) {
    //add start game function here
    return (topLeft.x <= mousePoint.x &&
        mousePoint.x <= topLeft.x + rectWidth &&
        topLeft.y <= mousePoint.y &&
        mousePoint.y <= topLeft.y + rectHeight);
  }
  
  void display() {
    stroke(210);
    fill(120);
    rect(topLeft.x, topLeft.y, rectWidth, rectHeight);
  }
  
}
