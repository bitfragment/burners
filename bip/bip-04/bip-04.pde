void setup() {
  size(768, 768);
  background(255);
  fill(0);

  float r, threshold = 0.2;
  int border = 25, step = 5, skip = 25;

  for (int x = border; x < width - border; x += step) {
    for (int y = border; y <= height - border; y += step) {
      textSize(random(3, 6));
      // fill(random(0, 100));
      r = random(1);
      if (r > threshold) text(char(int(random(65, 90))), x, y);
      else y += skip;
    }
  }

}

void draw() {}

void keyPressed() {
  if (key == 's') {
    saveFrame("frame-###.jpg");
  }
}
