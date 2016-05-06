//Tiffany Ulep
//AME 494: Animating for Virtual Worlds
//Particle Assignment
//Due: 10/29/2015

// A class to represent one particle
class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;  // when lifespan is <= 0, the particle is dead
  
  Particle( PVector loc ) {
    location = loc.get();
    velocity = new PVector( random( -1, 1 ), random( -3, 0 ) );
    acceleration = new PVector( 0, 0.028 );
    lifespan = 255.0;
  }
  
  void update() {
    velocity.add( acceleration );
    location.add( velocity );
    lifespan -= 2.0;
  }
  
  void render() {
    
    stroke( 0, lifespan );
    fill( 127, lifespan );
    ellipse( location.x, location.y, 12, 12 );
  }
  
  void run() {
    update();
    render();
  }
  
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    }
    else {
      return false;
    }
  }
  
  
}
