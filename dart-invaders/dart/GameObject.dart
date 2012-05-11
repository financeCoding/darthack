
class GameObject {

  Point pos;
  int width, height;
  CanvasRenderingContext2D ctx;
  

  GameObject(int x, int y, int this.width, int this.height) {
    this.pos = new Point(x, y);
    CanvasElement canvas = document.query('#game-canvas');
    this.ctx = canvas.getContext("2d");
  }

  void paint() {
    
  }

  void tick(double delta) {
    
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
  
  int minX() => pos.x;
  int maxX() => pos.x + width;
  int minY() => pos.y;
  int maxY() => pos.y + height;
}
