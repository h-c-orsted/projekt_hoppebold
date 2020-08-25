class GroundArc {
  PVector location = new PVector();
  float w;
  
  GroundArc(float x, float y, float w_in) {
    location.x = x;
    location.y = y;
    w = w_in;
  }
  
  
  void drawArc() {
    fill(255);
    arc(location.x, location.y, w, w, -PI, CHORD);
  }
  
  
  boolean checkPeriphery(float x, float y, float r) {
    double calc = pow((x-location.x),2) + Math.pow((y+r-location.y),2); 
    if (calc <= pow(w/2,2)) {
      return true;
    } else {
      return false;
    }
  }
  
  
  void calculateGround(PVector ballLocation, PVector ballVelocity) {
    // The angle from -90 to 90 degrees
    float angleSpan = (PI/w) / 2;
    // Calculate the angle for the tangent
    float angle = (ballLocation.x - location.x) * angleSpan;
    // Create the tangent vector
    PVector tangent = PVector.fromAngle(angle);
    // Calculate the angle between the tangent and the location vector of the ball
    float rotation = PVector.angleBetween(tangent, ballVelocity) * 2 + PI;
    // Rotate the ball accordingly
    ballVelocity.rotate(rotation);
  }
}
