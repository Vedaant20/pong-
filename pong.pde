
Puck puck;


Paddle left;
Paddle right;

int leftscore = 0;
int rightscore = 0;

void setup() {
  size(600, 400);
  puck = new Puck();
  left = new Paddle(true);
  right = new Paddle(false);
}

void draw() {
  background(0);


  puck.checkPaddleRight(right);
  puck.checkPaddleLeft(left);

  left.show();
  right.show();
  left.update();
  right.update();

  puck.update();
  puck.edges();
  puck.show();

  
}

void keyReleased() {
  left.move(0);
  right.move(0);
}

void keyPressed() {
  if (key == 'w') {
    left.move(-10);
  } else if (key == 's') {
    left.move(10);
  }

  if (key == '.') {
    right.move(-10);
  } else if (key == ',') {
    right.move(10);
  }
}
