import processing.sound.*;
Food food1;
Player player1;
Cpu cpu1;

SoundFile blop ;

int score = 0;
float posX, posY;
float D, S, A, B;
boolean gameOver;

void setup() {
  size(600, 400);


  food1 = new Food();
  player1 = new Player();
  cpu1 = new Cpu();
  blop = new SoundFile(this, "blop.wav");
  gameOver=false;
}
void draw() {
  A=map(mouseX, 0, 600, 0, 255);
  B=map(mouseX, 0, 600, 255, 0);
  background(A);
  fill(B);
  textSize(18);
  text("Score:", 5, 15);
  text(score, 60, 15);
  cpu1.update();
  food1.display();
  player1.display();
  cpu1.display();
  D=dist(mouseX, mouseY, food1.posX, food1.posY);
  if (D<=15 && gameOver==false ) {

    food1.reset();
    score++;
    cpu1.topspeed=cpu1.topspeed+0.5;
    blop.play();
  }
  /*cpu1.X++;*/
  S= dist(mouseX, mouseY, cpu1.location.x, cpu1.location.y);
  if (S<=24 && gameOver==false) {

    player1.game=false;
    gameOver=true;
  }

  if (gameOver==true && mousePressed==true) {
    cpu1.reset();
    score=0;
    player1.game=true;
    gameOver=false;
  }
  if (gameOver==true) {
    cpu1.topspeed=0;
    textSize(70);
    stroke(5);
    text("GAMEOVER", width/5-20, height/2);
    textSize(40);
    fill(B);
    text("Score:", width/2-80, height/2+40);
    text(score, width/2+35, height/2+42);
    textSize(20);
    fill(0, 135, 255);
    text("Click to play again", 200, 270);
  }
}
