class Walker {
  char c;
  int x, y;

  Walker() {
    c = char(int(random(65, 90)));
    x = width  / 2;
    y = height / 2;
  }

  void display() {
    fill(random(0, 100));
    textSize(random(32));
    text(c, x, y);
  }

  void step() {
    x += 10 * (int(random(3)) - 1); // => -5, 0, 5
    y += 10 * (int(random(3)) - 1);
    if (x < 0) x = width;
    if (x > width) x = 0;
    if (y < 0) y = height;
    if (y > height) y = 0;
  }
}

Walker w;

void setup() {
  size(768, 768);
  background(255);
  w = new Walker();
}

void draw() {
  w.step();
  w.display();
}

void keyPressed() {
  if (key == 's') {
    saveFrame("frame-###.jpg");
  }
}
