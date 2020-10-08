class Food {
  float posX, posY;

  Food() { 
    posX = random(25, width-25);
    posY = random(25, height-25);
  }
  void reset() {
    posX = random(25, width-25);
    posY = random(25, height-25);
  }


  void display() {
    fill(255, 200, 0);
    noStroke();
    ellipse(posX, posY, 15, 15);
  }
}
