Ball[] balls;
int countBalls = 10;


void setup() {
  size(1000, 500);
  
  balls = new Ball[countBalls];
  for (int i=0; i<countBalls; i++) {
    balls[i] = new Ball(random(10, 980), random(10, 400));
  }
}

void draw() {
  clear();
  background(200);
  
  for (int i=0; i<countBalls; i++) {  
    balls[i].drawBall();
    balls[i].move();
  }
  
  
  for (int i=0; i<countBalls; i++) {
    for (int j=0; j<countBalls; j++) {
      if (balls[i].location.x > balls[j].location.x-20 &&
          balls[i].location.x < balls[j].location.x+20 &&
          balls[i].location.y > balls[j].location.y-20 &&
          balls[i].location.y < balls[j].location.y+20 &&
          i != j) {
           
        if (!balls[i].collision) {
          balls[i].velocity.x *= -1;
          balls[i].collision = true;
        } 
      } else {
        balls[i].collision = false;
      }
    } 
  }
}
