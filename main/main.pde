Ball[] balls;
int countBalls = 1;


void setup() {
  size(1000, 500);
 
  
  balls = new Ball[countBalls];
  for (int i=0; i<countBalls; i++) {
    balls[i] = new Ball(random(10, 980), random(10, 400));
  }
}

void draw() {
  clear();
  background(144, 197, 215);
  noStroke();
  fill(115,63,24);
  triangle(-40,400,200,100,400,400);
  fill(45,137,45);
  rect(0,400,1000,400);
  fill(191,105,40);
  quad(800,400,800,275,835,275,835,400);
  fill(86,160,86);
  circle(800,275, 45);
  circle(820,240, 45);
  circle(835,275, 45);
  
  
  
  
  for (int i=0; i<countBalls; i++) {  
    balls[i].drawBall();
    balls[i].move();
  }
}
