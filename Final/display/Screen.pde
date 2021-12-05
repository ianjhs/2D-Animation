
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
    button1 = new RestartButton(140,280,100,40);
    menuButton = new RestartButton(260,280,100,40);
  }
  void display(){
    
    
    fill(200);
    rect(topLeft.x,topLeft.y,rectWidth,rectHeight);
    fill(0);
    text("Score:", 180,250);
    text(score, 290,250);
    textSize(30);
    if (score == snake.target){
      fill(0);
      textSize(50);
      text("You Won", 160, 210);
      textSize(30);
      //button.startGame();
    //  if (keyPressed) {
    //    if (key == ' ') {
    //      reset_snek();
    //      snake.total = 0;
    //      s.score = 0;
    //      frameRate(20);
    //    }
    //}
    }
    
    if (snake.x > 505 || snake.x < -5) {
      fill(0);
      textSize(40);
      text("You Lost", 160, 210);
      textSize(30);
      //button.startGame();
    //  if (keyPressed) {
    //    if (key == ' ') {
    //      reset_snek();
    //      snake.total = 0;
    //      s.score = 0;
    //      frameRate(20);
    //    }
    //}
  }
    else if (snake.y > 505 || snake.y < -5) {
      fill(0);
      textSize(50);
      text("You Lost", 160, 210);
      textSize(30);
      //button.startGame();
    //  if (keyPressed) {
    //    if (key == ' ') {
    //      reset_snek();
    //      snake.total = 0;
    //      s.score = 0;
    //      frameRate(20);
    //    }
    //}
     
   }
    
    button1.display();
    menuButton.display();
    fill(255);
    textSize(20);
    text("Restart?", 156, 306);
    text("Main Menu", 265, 306);
    
  
  }
  void changeScore(int score){
    this.score = score++;
  }
  void changeStatus(boolean status){
    this.status = status;
  }
}
