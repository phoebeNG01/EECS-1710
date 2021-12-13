import processing.video.*;

Capture video;

int x = 0;

void setup() {
  size(1280, 480);
  
  video = new Capture(this, "pipeline:autovideosrc");
  video.start(); 
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  copy(video, video.width/2, 0, 1, video.height, x, 0, 1, video.height);
  x = x + 1;
}
