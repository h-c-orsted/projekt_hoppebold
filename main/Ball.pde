class Ball {
  PVector location = new PVector();
  PVector velocity = new PVector();
  PVector acceleration = new PVector();
  
  Ball(float xIn, float yIn) {
    location.x = xIn;
    location.y = yIn;
    
    velocity.x = random(-2, 2);
    velocity.y = random(-2, 2);
  }
  
}
