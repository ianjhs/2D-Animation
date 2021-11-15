class Scoreboard{
  PVector topLeft;
  float rectWidth;
  float rectHeight;
  int score;
  
  Scoreboard(float topLeftX, float topLeftY, float rectWidth, float rectHeight) {
    topLeft = new PVector(topLeftX, topLeftY);
    this.rectWidth = rectWidth;
    this.rectHeight = rectHeight;
    }
    
  void display(){
     fill(200);
     rect(topLeft.x,topLeft.y,rectWidth,rectHeight);
     fill(0);
     text("Score: ",415,34);
     text(this.score, 460, 34);
      
    }
    void changeScore(int score){
      this.score = score;
    }
}
