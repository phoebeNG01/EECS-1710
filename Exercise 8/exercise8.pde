import processing.video.*;

Capture video;

int pointillize = 16;

void setup() {
  size(640, 480);
  background(0);
  video = new Capture(this, "pipeline:autovideosrc");
  video.start(); 
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  for (int i = 0; i < 300; i++) {
    int x = int(random(video.width));
    int y = int(random(video.height));
    int loc = x + y*video.width;
    video.loadPixels();
    float r = red(video.pixels[loc]);
    float g = green(video.pixels[loc]);
    float b = blue(video.pixels[loc]);
    noStroke();
    fill(r, g, b, 100);
    ellipse(x, y, pointillize, pointillize);
  }
}
