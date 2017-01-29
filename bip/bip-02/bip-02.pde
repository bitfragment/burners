void setup() {
  size(768, 768);
  background(255);
  strokeWeight(3);

  float r, threshold = 0.2;
  int border = 25, step = 5, skip = 25;

  for (int x = border; x < width - border; x += step) {
    for (int y = border; y <= height - border; y += step) {
      r = random(1);
      if (r > threshold) point(x, y);
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