class Particle {
  int particleSize = 4;
  ArrayList<Ball> Particles = new ArrayList<Ball>();
  PVector gravity = new PVector();
  
  Particle() {
     gravity.set(0.1,0.1);
  }
  void addParticle() {
    Ball ball = new Ball(particleSize);
    Particles.add(ball);
  }

  void show() {
    for (Ball particle : Particles ) {
      particle.addForce(gravity);
      particle.edges();
      particle.update();
    }
  }
}
