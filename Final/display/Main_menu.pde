
class Main_menu{
  PVector topLeft;
  float rectWidth;
  float rectHeight;
  int score;
  boolean status;
  
  Main_menu() {
    //super();
    topLeft = new PVector(0, 0);
    this.rectWidth = width;
    this.rectHeight = height;
  }
  void display() {
    button = new RectangleButton(180,200,140,50);
    soundButton = new SoundButton(180,290,140,50);
    fill(200);
    rect(topLeft.x,topLeft.y,rectWidth,rectHeight);
    button.display();
    fill(0);
    textSize(25);
    text("Start Game", 192, 232);
    
    soundButton.display();
    fill(0);
    text("Sound", 215, 324);
    
  }
  //void isStarted(){
    
  //}
  void start_game() {
    buttonOn = false;
    background(0);
    startStop = true;
    snake.update();
    snake.display();
    
    scoreboard.display();  
    scoreboard.changeScore(s.score);
    
    //add function to start game to the startGame()  function in the button class
    //when game is over, set changeStatus to true for win or false for loss 
    // then use changes.score to add the final s.score to the GUI and display the screen with display function
    //s.display();
    s.changeScore(s.score);
    s.changeStatus(false);
  
    
    yummy.show();
    if (abs(snake.x-yummy.x)<=5 &&abs(snake.y-yummy.y)<=5){
      yummy = new food(20*(int) random(0, 20), 20*(int) random(0, 20));
      s.score = s.score + 1;
      snake.total++;
      if (snake.total == 7);
        snake.total = snake.total + 2;
        
      if (s.score==3){
        frameRate(30);
      }
      if (s.score==4){
        frameRate(45);
      }  
    }
    snake.lose();
    snake.win();
    button1On = true;
    }
}
   
