Ball[] balls;
int countBalls = 1;


void setup() {
  size(1000, 500);
  
  for (int i=0; i<countBalls; i++) {
    balls[i] = new Ball(random(10, 980), random(10, 400));
  }
}

void draw() {
  
}
