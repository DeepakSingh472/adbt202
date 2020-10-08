class Player {
  boolean game;
  float posX, posY;
  Player() {
    game=true;
  }

  void display() {
    fill(0, 135, 255);
    noStroke();
    if (game==true) {
      ellipse(mouseX, mouseY, 30, 30);
      fill(B);
      text("Deepak", mouseX-30, mouseY+30);
    } else {
      ellipse(20, 40, 30, 30);
      fill(B);
      text("Deepak", 20-30, 40+30);
    }
  }
}
