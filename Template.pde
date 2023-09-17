Particle p = new Particle();
int pAmount = 5000;
int counter;
Rect rect1 = new Rect();
Rect rect2 = new Rect();
boolean play = false;
void setup() {
  background(0);
  noLoop();
  size(1000, 1000);
  for(int i = 0 ; i < pAmount ; i++){
    p.addParticle();
  }
  rect1.x = 0;
  rect1.y = height;
  rect1.width = width + 10;
  rect1.height = 10;
  rect1.brush = color(255,255,255);
  

  rect2.x = width;
  rect2.y = 0;
  rect2.width = 10;
  rect2.height = height;
  rect2.brush = color(255,255,255);
}

void draw() {
  background(0);
  translate(width/2,-500);
  rotate(radians(45));
  p.show();
  if(!play){
  }
  rect1.draw();
  rect2.draw();
  frameRate(150);
  
  
}

void mousePressed() {
  loop();
  play = !play;
}
