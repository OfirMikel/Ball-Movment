class Ball {
  PVector vel = new PVector();
  PVector pos = new PVector();
  PVector acc = new PVector();
  Ellipse circle = new Ellipse();

  Ball(int rad) {
    createCircle(rad);
  }

  private void createCircle(int radius) {
    circle.radiusX = radius;
    circle.radiusY = radius;
    pos.x = radius +300 + random(400);
    pos.y = radius +300 + random(400);

    circle.brush = color(random(255), random(255), random(255));
  }

  void update() {
    vel.add(acc);
    pos.add(vel);
    vel.limit(40);
    circle.x = (int)pos.x;
    circle.y = (int)pos.y;
    circle.draw();
    acc.mult(0);
    
}
  void addForce(PVector force) {
    PVector f = PVector.add(force, acc);
    acc.add(f);
  }
  void edges() {
    println( " POS:"  + pos.mag() + " VEL:"  + vel.mag()  + "ACC: " + acc.mag());
    
    if (pos.x <= circle.radiusX) {
      vel.x = -1 * vel.x;
      pos.x = circle.radiusX + 1;
    }
    if (pos.x >= (width - circle.radiusX)) {
      vel.x = -1 * vel.x;
      pos.x = width - circle.radiusX - 1;
    }
    if (pos.y >= (height - circle.radiusX)) {
      vel.y = -1 * vel.y;
      pos.y = height - circle.radiusX + 1;
    }
    if (pos.y <= (0 - circle.radiusX)) {
      vel.y = -1 * vel.y;
      pos.y =  circle.radiusX + 1;
    }
  }
}
