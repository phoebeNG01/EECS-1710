class Ship {
  float x, y;
  float move = 2;

  Ship() {
    this.x = width/2;
    this.y = height-150;
  }
  
  void show () {
    imageMode(CENTER);
    image(ship, this.x, this.y); 
    ship.resize(205,240);
  }
  
  void move() {
   this.x = this.x + this.move;

   if (this.x > invader.leftBounce || this.x < invader.rightBounce) {
   this.move *= -1;
   }
  }
}
