//http://learningprocessing.com/examples/chp20/example-20-09-mic-input

import processing.sound.*;

PImage pet;

AudioIn input;
Amplitude analyzer;

void setup() {
  size(300, 300);
  input = new AudioIn(this, 0);
  input.start();
  analyzer = new Amplitude(this);
  analyzer.input(input);
  
  pet = loadImage("ghost.png");
}

void draw() {
  background(0, 25, 51);

  float vol = analyzer.analyze();
 
  image(pet, 200, 200, -(10+vol*1000), -(10+vol*1000));
}
