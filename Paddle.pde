class Paddle {
  float x;
  float y = height/2;
  float v = 20;
  float h = 100;

  float ychange = 0;

  Paddle(boolean left) {
    if (left) {
      x = v;
    } else {
      x = width - v;
    }
  }

  void update() {
    y += ychange;
    y = constrain(y, h/2, height-h/2);
  }


  void move(float steps) {
    ychange = steps;
  }

  void show() {
    fill(255);
    rectMode(CENTER);
    rect(x, y, v, h);
  }
}
