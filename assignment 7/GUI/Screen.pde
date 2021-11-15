class Screen{
  PVector topLeft;
  float rectWidth;
  float rectHeight;
  int score;
  boolean status;
  
  Screen(float topLeftX, float topLeftY, float rectWidth, float rectHeight) {
    topLeft = new PVector(topLeftX, topLeftY);
    this.rectWidth = rectWidth;
    this.rectHeight = rectHeight;
  }
  void display(){
    button = new RectangleButton(180,270,140,50);
    
    fill(200);
    rect(topLeft.x,topLeft.y,rectWidth,rectHeight);
    fill(0);
    text("Score:", 180,250);
    text(score, 290,250);
    textSize(30);
    if (status == true){
      fill(0);
      textSize(50);
      text("You Won", 160, 210);
      textSize(30);
    }
    if (status == false){
      fill(0);
      textSize(50);
      text("You Lost", 160, 210);
      textSize(30);
    }
    
    button.display();
    fill(255);
    text("Restart?", 202, 305);
    
  }
  void changeScore(int score){
    this.score = score;
  }
  void changeStatus(boolean status){
    this.status = status;
  }
}
  
  
