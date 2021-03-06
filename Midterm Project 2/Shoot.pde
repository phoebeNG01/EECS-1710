class Shoot {
  float x, y;
  float radius;
  boolean shooted;
  
  Shoot() {
    this.x = spaceship.x;
    this.y = height-250;
    this.radius = 11/2;
  }
  
  void show() {
    noStroke();
    fill(255, 0, 0);
    rectMode(CENTER);
    rect(this.x, this.y, 11, 40);
  }
  
  void move() {
    this.y = this.y-10;
    this.x = spaceship.x;
  }
  
  void delete() {
    this.shooted = true;
  }
  
  boolean shoots(Alien invader) {
    float f = dist(this.x, this.y, invader.x, invader.y);
    
    if (f < this.radius + invader.edge) {
      return true;
    } else {
      return false;
    }
  }
  

}
