RainLine lines[];

void setup() {
  frameRate(10);
  //size(800, 800);
  fullScreen();
  lines = new RainLine[width];
  for (int i = 0; i < width; i++) {
    lines[i] = new RainLine(i);
  }
}

void draw() {
  background(0);
  
  for (int i = 0; i < width; i++) {
    lines[i].draw();
    lines[i].update();
  }
}
