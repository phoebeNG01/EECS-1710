class Alien {
  float x, y;
  float edge;
  float move = 2;
  
  float leftBounce, rightBounce;
  
  Alien() {
    this.x = width/2;
    this.y = 200;
    this.edge = this.y-90;
    this.leftBounce = displayWidth-350;
    this.rightBounce = 350;
  }
  
  void show () {
    imageMode(CENTER);
    image(alien, this.x, this.y); 
  }
  
  void move() {
    this.x = this.x + this.move;
    
    if (this.x > this.leftBounce || this.x < this.rightBounce) {
    this.move *= -1;
    }
  }
}
