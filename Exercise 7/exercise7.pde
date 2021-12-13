//https://www.youtube.com/watch?v=f5QBExMNB1I
//https://en.wikipedia.org/wiki/Rose_(mathematics)

float d = 9;
float n = 2;

void setup() {
  size(200, 200);
}

void draw() {
  float k = n / d;
  background(252, 220, 232);
  translate(width / 2, height / 2);

  beginShape();
  stroke(255, 0, 0);
  noFill();
  strokeWeight(3);
  for (float a = 0; a < TWO_PI * d; a += 0.02) {
    float r = 100 * cos(k * a);
    float x = r * cos(a);
    float y = r * sin(a);
    vertex(x, y);
  }
  endShape(CLOSE);
}
