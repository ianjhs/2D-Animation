Snake snake;
int scl = 5;
//int s.score = 0;
//int life = 1;
PFont mono;
food yummy;

//GUI
Screen s;
Button button;
PVector mousePoint;


void setup() {
  frameRate(20);
  size(500, 500);
  noStroke();
  s = new Screen(100,150,300,200);
  background(255);
  
  snake = new Snake(100, 100);
  yummy = new food(20*(int) random(0, 20), 20*(int) random(0, 20));
}

void draw() {
  background(0);
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
  }
  
void mousePressed(){
  PVector mousePoint = new PVector(mouseX, mouseY);
  button.registerMousePress(mousePoint);
}

void keyPressed() {
  if (keyCode == UP) {
    snake.dir(0, -1);
  } else if (keyCode == DOWN) {
    snake.dir(0, 1);
  } else if (keyCode == RIGHT) {
    snake.dir(1, 0);
  } else if (keyCode == LEFT) {
    snake.dir(-1, 0);
  }
}

void reset_snek(){
  snake.x = (int)random(100, 300);
  snake.y = (int)random(100, 300);
}
