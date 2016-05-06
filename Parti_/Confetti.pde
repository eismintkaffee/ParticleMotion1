//Tiffany Ulep
//AME 494: Animating for Virtual Worlds
//Particle Assignment
//Due: 10/29/2015
class Confetti extends Particle {
  float theta;
  float thetaVelocity;
  
  //ref:http://www.openprocessing.org/sketch/45098
  //variables to change the color ranges, RGB based
  float R=125;
  float centerR=125;
  float a = PI/2;
  float a1 = PI/4;
  float a2 = PI;
  float pathR=125;
  float pathG=50;
  float G=50;
  float centerG=125;
  float pathB=125;
  float B=125;
  float centerB=125;
  //end color variables
  
  
  Confetti( PVector loc ) {
    super( loc );
    theta = random( 0, TWO_PI );
    if (velocity.x > 0) {
      thetaVelocity = 0.1;
    }
    else {
      thetaVelocity = -0.1;
    }
  }
  
  void update() {
    super.update();
    theta += thetaVelocity;
    
     //color changer
    pathR=centerR+R*sin(a);
    a=+ random(-3,3); 
    pathG=centerG+G*sin(a1);
    a1=a1+random(-3,3);  
    pathB=centerB+B*sin(a2);
    a2=a2+random(-3,3);
    //end color changer
    
  }
  
  void render() {
    pushMatrix();
    translate( location.x, location.y );
    rotate( theta );
    rectMode(CENTER);
    stroke( 255, lifespan );
    fill( pathR,pathG,pathB, lifespan );
    //fill(127, lifespan);
    rect( 0, 0, 12, 12 );
    popMatrix();
    
  }
}

