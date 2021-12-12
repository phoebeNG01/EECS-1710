class LetterGenerator {
  String input;
  PVector position;
  PImage img;
  
  LetterGenerator(String _input, float x, float y) {
    input = _input;
    position = new PVector (x, y);
    
    switch(input) {
     case "f": 
       img = f;
       break;
     case "e": 
       img = e;
       break;
     case "b": 
       img = b;
       break;
    }
  }
  
  void draw(){
    image(img, position.x, position.y);
  }
}
