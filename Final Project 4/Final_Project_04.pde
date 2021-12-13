import processing.sound.*;

SoundFile C4, D4, E4, F4, G4, A4, B4; 
SoundFile C4Sharp, D4Sharp, F4Sharp, G4Sharp, A4Sharp;

void setup() {
 size(520, 550);
 background(255);
 
 C4 = new SoundFile(this, "C4.wav");
 C4Sharp = new SoundFile(this, "C4#.wav");
 D4 = new SoundFile(this, "D4.wav");
 D4Sharp = new SoundFile(this, "D4#.wav");
 E4 = new SoundFile(this, "E4.wav");
 F4 = new SoundFile(this, "F4.wav");
 F4Sharp = new SoundFile(this, "F4#.wav");
 G4 = new SoundFile(this, "G4.wav");
 G4Sharp = new SoundFile(this, "G4#.wav");
 A4 = new SoundFile(this, "A4.wav");
 A4Sharp = new SoundFile(this, "A4#.wav");
 B4 = new SoundFile(this, "B4.wav");
}

void draw() {
 strokeWeight(5);
 
 rect(50,50,60,400);  //white key 1
 rect(110,50,60,400); //white key 2
 rect(170,50,60,400); //white key 3
 rect(230,50,60,400); //white key 4
 rect(290,50,60,400); //white key 5
 rect(350,50,60,400); //white key 6
 rect(410,50,60,400); //white key 7
 
 fill(0);
 rect(85,50,50,200);  //black key 1
 fill(0);
 rect(147,50,50,200); //black key 2
 fill(0);
 rect(263,50,50,200); //black key 3
 fill(0);
 rect(327,50,50,200); //black key 4
 fill(0);
 rect(387,50,50,200); //black key 5
 
 textSize(20);
 fill(0);
 text("Press keys a, s, d, f, g, h, j to run the white keys",20,500);
 text("Press keys w, e, t, y, u to run the white keys",20,525);

 fill(255);
}

void keyPressed() {
  //key C4
  if (keyCode == 65){
    C4.play(); //<>//
    fill(0);
    rect(50,50,60,400); //white key 1
    fill(0);
    rect(85,50,50,200); //black key 1
  } else {
    C4.stop();
    fill(255);
    rect(50,50,60,400); //white key 1
    fill(0);
    rect(85,50,50,200); //black key 1
  }
  
  //key D4
  if (keyCode == 83){
    D4.play();
    fill(0);
    rect(110,50,60,400); //white key 2
    fill(0);
    rect(85,50,50,200);  //black key 1
    fill(0);
    rect(147,50,50,200); //black key 2
  } else {
    D4.stop();
    fill(255);
    rect(110,50,60,400); //white key 2
    fill(0);
    rect(85,50,50,200);  //black key 1
    fill(0);
    rect(147,50,50,200); //black key 2
  }
  
  //key E4
  if (keyCode == 68){
    E4.play();
    fill(0);
    rect(170,50,60,400); //white key 3
    fill(0);
    rect(147,50,50,200); //black key 2
  } else {
    E4.stop();
    fill(255);
    rect(170,50,60,400); //white key 3
    fill(0);
    rect(147,50,50,200); //black key 2
  }
  
  //key F4
  if (keyCode == 70){
    F4.play();
    fill(0);
    rect(230,50,60,400); //white key 4
    fill(0);
    rect(263,50,50,200); //black key 3
  } else {
    F4.stop();
    fill(255);
    rect(230,50,60,400); //white key 4
    fill(0);
    rect(263,50,50,200); //black key 3
  }
  
  //key G4
  if (keyCode == 71){
    G4.play();
    fill(0);
    rect(290,50,60,400); //white key 5
    fill(0);
    rect(263,50,50,200); //black key 3
    fill(0);
    rect(327,50,50,200); //black key 4
  } else {
    G4.stop();
    fill(255);
    rect(290,50,60,400); //white key 5
    fill(0);
    rect(263,50,50,200); //black key 3
    fill(0);
    rect(327,50,50,200); //black key 4
  }
  
  //key A4
  if (keyCode == 72){
    A4.play();
    fill(0);
    rect(350,50,60,400); //white key 6
    fill(0);
    rect(327,50,50,200); //black key 4
    fill(0);
    rect(387,50,50,200); //black key 5
  } else {
    A4.stop();
    fill(255);
    rect(350,50,60,400); //white key 6
    fill(0);
    rect(327,50,50,200); //black key 4
    fill(0);
    rect(387,50,50,200); //black key 5
  }
  
  //key B4
  if (keyCode == 74){
    B4.play();
    fill(0);
    rect(410,50,60,400); //white key 7
    fill(0);
    rect(387,50,50,200); //black key 5
  } else {
    B4.stop();
    fill(255);
    rect(410,50,60,400); //white key 7
    fill(0);
    rect(387,50,50,200); //black key 5
  }
  
  //key C4#
  if (keyCode == 87){
    C4Sharp.play();
    fill(255);
    rect(85,50,50,200);  //black key 1
  } else {
    //C4Sharp.stop();
    fill(0);
    rect(85,50,50,200);  //black key 1
  }
  
  //key D4#
  if (keyCode == 69){
    D4Sharp.play();
    fill(255);
    rect(147,50,50,200); //black key 2
  } else {
    D4Sharp.stop();
    fill(0);
    rect(147,50,50,200); //black key 2
  }
  
  //key F4#
  if (keyCode == 84){
    F4Sharp.play();
    fill(255);
    rect(263,50,50,200); //black key 3
  } else {
    F4Sharp.stop();
    fill(0);
    rect(263,50,50,200); //black key 3
  }
  
  //key G4#
  if (keyCode == 89){
    G4Sharp.play();
    fill(255);
    rect(327,50,50,200); //black key 4
  } else {
    G4Sharp.stop();
    fill(0);
    rect(327,50,50,200); //black key 4
  }
  
  //key A4#
  if (keyCode == 85){
    A4Sharp.play();
    fill(255);
    rect(387,50,50,200); //black key 5
  } else {
    A4Sharp.stop();
    fill(0);
    rect(387,50,50,200); //black key 5
  }
}
