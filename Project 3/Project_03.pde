// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

PImage tamagotchi;
int cellsize = 2; 
int columns, rows;

void setup() {
  size(200, 200, P3D);
  tamagotchi = loadImage("tamagotchi.png");
  columns = width / cellsize; 
  rows = height / cellsize;
}

void draw() {
  background(0);
  tamagotchi.loadPixels();

  for (int i = 0; i < columns; i++ ) {
    for (int j = 0; j < rows; j++ ) {
      int x = i * cellsize + cellsize / 2; 
      int y = j * cellsize + cellsize / 2;
      int loc = x + y * width;
      color c = tamagotchi.pixels[loc];
      float z = map(brightness(tamagotchi.pixels[loc]), 0, 255, 0, mouseX);
      
      pushMatrix();
      translate(x, y, z); 
      fill(c);
      noStroke();
      rectMode(CENTER);
      rect(0, 0, cellsize, cellsize);
      popMatrix();
    }
  }
}
