//Tiffany Ulep
//AME 494: Animating for Virtual Worlds
//Particle Assignment
//Due: 10/29/2015

import java.util.Iterator;


ArrayList<ParticleSystem> systems;   // List of particle systems
int r;

void setup() {
  size( 800, 600 ); //default size (1200,800)

  systems = new ArrayList<ParticleSystem>();  // Make a new empty ArrayList
}


void draw() {
  background(15);

  // Process every particle system in the list
  // (add a new particle, then "run" - update and render
  for (ParticleSystem ps: systems) {
    ps.addParticle(r); //get a int r if r is odd particle is tri, if even
    ps.run();
  
  }
}


void mousePressed() {
  // Add a new particle system where the mouse was pressed
  systems.add( new ParticleSystem( new PVector( mouseX, mouseY ) ) );
  r++; //count number of clicks
}

