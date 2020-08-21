class Ball {
  PVector location = new PVector();
  PVector velocity = new PVector();
  PVector acceleration = new PVector();
  
  Ball(float xIn, float yIn) {
    location.x = xIn;
    location.y = yIn;
    
    velocity.x = random(-3, 3);
    velocity.y = random(-3, 3);
  }
  
  
  void drawBall() {
    fill(20, 20, 230);
    circle(location.x, location.y, 20);
  }
  
  
  void move() {
    location.add(velocity);
    
    if (location.x >= 990 || location.x <= 10) {
      velocity.x *= -1;
    }
    if (location.y >= 490 || location.y <= 10) {
      velocity.y *= -1;
    }
  }
}
