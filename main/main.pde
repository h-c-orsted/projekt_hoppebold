Ball[] balls;
int countBalls = 10;
float ballSize = 30;


void setup() {
  size(1000, 500);
 
  
  balls = new Ball[countBalls];
  for (int i=0; i<countBalls; i++) {
    balls[i] = new Ball(random(10, 980), random(10, 400), ballSize);
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
  
  if(keyPressed){
    if(key == 'r' || key == 'R');{
      for (int i=0; i<countBalls; i++) {
    balls[i] = new Ball(random(10, 980), random(10, 400), ballSize);
  }
    }
  } 
  
  
  for (int i=0; i<countBalls; i++) {  
    balls[i].drawBall();
    balls[i].move();
  }
  
  
  for (int i=0; i<countBalls; i++) {
    for (int j=0; j<countBalls; j++) {
      if (balls[i].location.x > balls[j].location.x-ballSize &&
          balls[i].location.x < balls[j].location.x+ballSize &&
          balls[i].location.y > balls[j].location.y-ballSize &&
          balls[i].location.y < balls[j].location.y+ballSize &&
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


void restart(){
   
  
}
