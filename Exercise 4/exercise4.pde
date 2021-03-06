PImage f, e, b;
String input = "feebee";

LetterGenerator letter1, letter2, letter3, letter4, letter5, letter6;

void setup() {
  size(1500, 500, P2D);
  
  b = loadImage("b.png");
  b.resize(278, 377);
  e = loadImage("e.png");
  e.resize(300, 336);
  f = loadImage("f.png");
  f.resize(420, 480);
  
  letter1 = new LetterGenerator("f", 0, 0);
  letter2 = new LetterGenerator("e", 250, 150);
  letter3 = new LetterGenerator("e", 450, 150);
  letter4 = new LetterGenerator("b", 700, 50);
  letter5 = new LetterGenerator("e", 925, 150);
  letter6 = new LetterGenerator("e", 1125, 150);
}

void draw() {
  background(255);
  
  letter1.draw();
  letter2.draw();
  letter3.draw();
  letter4.draw();
  letter5.draw();
  letter6.draw();
}
