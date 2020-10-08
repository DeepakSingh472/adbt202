class Cpu {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed, X;


  Cpu() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    topspeed = 3;
  }

  void update() {


    PVector mouse = new PVector(mouseX, mouseY);
    PVector acceleration = PVector.sub(mouse, location);
    X=10;
    acceleration.setMag(X);

    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }

  void display() {
    fill(255, 0, 0);
    ellipse(location.x, location.y, 48, 48);
  }
  void reset() {
    location.x=width/2;
    location.y=height/2;
    topspeed=3;
  }
}
