color nightTime = color(0, 0, 0);
color dayTime = color(153, 255, 255);

void setup() {
  size(1000, 700);
}

void draw() {  
  if (mousePressed) {
    fill(nightTime, 5);
    rect(0, 0, width, height);
    fill(255);
    noStroke();
    ellipse(random(width), random(height), 3, 3);
    circle(220, 180, 200);
    fill(25, 25, 25);
    circle(265, 140, 190);
  } else {
    background(dayTime);
    fill(255, 255, 51);
    stroke(255, 153, 51);
    strokeWeight(3);
    circle(780, 180, 200);
  }  
}
