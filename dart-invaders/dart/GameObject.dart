
class GameObject {

  int x, y;
  int width, height;
  CanvasRenderingContext2D ctx;
  

  GameObject(int this.x, int this.y, int this.width, int this.height) {
    
    CanvasElement canvas = document.query('#game-canvas');
    this.ctx = canvas.getContext("2d");
  }

  void paint() {
    
  }

  void tick(delta) {
    
  }

  /* check whether the given game object collides with this one */
  bool collide(GameObject other) {
    return !((other.minX() > this.maxX()) ||
        (this.minX() > other.maxX()) ||
        (other.minY() > this.maxY()) ||
        (this.minY() > other.maxY()));
  }

  /* is the given GameObject contained within this one */
  bool within(GameObject other) {
    return ((other.minX() > this.minX()) &&
        (other.maxX() < this.maxX()) &&
        (other.minY() > this.minY()) &&
        (other.maxY() < this.maxY()));
  }
  
  int minX() => x;
  int maxX() => x + width;
  int minY() => y;
  int maxY() => y + height;
}