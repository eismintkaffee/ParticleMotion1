//Tiffany Ulep
//AME 494: Animating for Virtual Worlds
//Particle Assignment
//Due: 10/29/2015

// A class to represent one particle system.
// Each particle system maintains its own list of particles.
class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;

  ParticleSystem( PVector location ) {
    origin = location.get();
    particles = new ArrayList<Particle>();
  }

  void addParticle(int r) {
    if (r % 2 == 0) {
      particles.add( new Streak( origin ) );
    }
    else //(r%3 ==0)
       particles.add( new Tri( origin ) );
      
    }
//    else 
//      particles.add( new Confetti (origin));
//    }

  void run() {
    Iterator<Particle> it = particles.iterator();
    while (it.hasNext ()) {
      Particle p = it.next();
      p.run();
      if (p.isDead()) {
        it.remove();
      }
    }
  }
}

