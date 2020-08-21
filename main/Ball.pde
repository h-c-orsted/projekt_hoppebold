class Ball {
  PVector location = new PVector();
  PVector velocity = new PVector();
  PVector acceleration = new PVector(0, 0.2);
  float decelleration_rate = 0.993;
  
  Ball(float xIn, float yIn) {
    location.x = xIn;
    location.y = yIn;
    
    velocity.x = random(-3, 3);
    velocity.y = random(-3, 3);
  }
  
  
  void drawBall() {
    fill(30, 80, 230);
    circle(location.x, location.y, 20);
  }
  
  
  void move() {
    location.add(velocity);
    velocity.add(acceleration);
    velocity.y *= decelleration_rate;
    
    if (location.x >= width-10 || location.x <= 10) {
      velocity.x *= -1;
    }
    if (location.y >= height-10 || location.y <= 10) {
      velocity.y *= -1;
    }
  }
}
