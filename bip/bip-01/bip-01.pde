class Walker {
  int x, y;

  Walker() {
    x = width  / 2;
    y = height / 2;
  }

  void display() {
    point(x, y);
  }

  void step() {
    x += int(random(3)) - 1; // => -1, 0, 1
    y += int(random(3)) - 1;

    // Stay within bounds
    if (x < 0) x += 1;
    if (X > width) x -= 1;
    if (y < 0) y += 1;
    if (y > height) y -= 1;
  }
}


Walker w;


void setup() {
  size(768, 768);
  background(255);
  stroke(0);
  strokeWeight(0.5);
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