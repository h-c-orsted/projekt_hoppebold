class Ball {
  PVector location = new PVector();
  PVector velocity = new PVector();
  PVector acceleration = new PVector(0, 0.2);
  float decelleration_rate = 0.993;
  boolean collision = false;
  float ballSize = 20;
  
  Ball(float xIn, float yIn, float ball_size) {
    location.x = xIn;
    location.y = yIn;
    
    ballSize = ball_size;
    
    velocity.x = random(-5, 5);
    velocity.y = random(-3, 3);
  }
  
  
  void drawBall() {
    fill(30, 80, 230);
    stroke(6);
    circle(location.x, location.y, ballSize);
  }
  
  
  void move() {
    location.add(velocity);
    velocity.add(acceleration);
    velocity.y *= decelleration_rate;
    
    if (location.x >= width-ballSize/2 || location.x <= ballSize/2) {
      velocity.x *= -1;
    }
    if (location.y >= height-ballSize/2 || location.y <= ballSize/2) {
      velocity.y *= -1;
    }
  }
}
