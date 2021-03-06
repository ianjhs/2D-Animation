Snake snake;
int scl = 5;
//int s.score = 0;
//int life = 1;
PFont mono;
food yummy;
Main_menu mainMenu;


String[] nameList = {};

//GUI
Screen s;
Button button;
RestartButton menuButton;
RestartButton button1;
SoundButton soundButton;
boolean buttonOn;
boolean button1On;

PVector mousePoint;
Scoreboard scoreboard;
boolean startStop;
import controlP5.*;
String name;

ControlP5 cp5;


void setup() {
  frameRate(20);
  size(500, 500);
  noStroke();
  s = new Screen(100,150,300,200);
  background(255);
  scoreboard = new Scoreboard(400,10,90,40);
  mainMenu = new Main_menu();
  
  snake = new Snake(100, 100);
  yummy = new food(20*(int) random(0, 20), 20*(int) random(0, 20));
  buttonOn = true;
  mainMenu.display();
  //textfield = new textfield(100,100, 100, 20);
  cp5 = new ControlP5(this);
  cp5.addTextfield("Name")
    .setPosition(148, 100)
      .setSize(200, 40)
        //.setFont(font)
          .setFocus(true)
            .setColor(color(255, 0, 0))
              ;

  
              
}

void draw() {
  if (startStop == true){
    mainMenu.start_game();
    cp5.get(Textfield.class, "Name").setVisible(false);
  }
  //if (startStop == false){
    
  //}
  //print(Name);
  //button.registerMousePress(mousePoint);
}
  /*background(0);
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
  }*/
  
void mousePressed(){
  PVector mousePoint = new PVector(mouseX, mouseY);
  if (buttonOn == true){
    button.registerMousePress(mousePoint);
    soundButton.registerMousePress(mousePoint);
    
  }
  else if(button1On == true){
      
    button1.registerMousePress(mousePoint);
  }
  //menuButton.registerMousePressMenu(mousePoint);
}

void mouseReleased() {
  if(soundButton.isPressed()) {
    // bgColor = color(255, 0, 0);
    soundButton.forgetMousePress();
  }
  
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
