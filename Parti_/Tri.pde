//Tiffany Ulep
//AME 494: Animating for Virtual Worlds
//Particle Assignment
//Due: 10/29/2015

class Tri extends Particle{
  float angle;
  
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
  
  Tri(PVector loc) {
    super(loc);
    angle = 0;
    
    }//end of constructor
  
  void render() {
    
    //Using Shiffman code Ch3.3
    float angle = atan2(velocity.y,velocity.x);
 
    stroke(240);
    strokeWeight(1);
    noFill();
    pushMatrix();
    rectMode(CENTER);
    translate(location.x,location.y);
    rotate(angle);
    stroke( 255, lifespan );
    fill(pathB,pathG,pathR,lifespan);
    //fill(127,lifespan);
    triangle(-7, 3, -7, -3, 7, 0);
    popMatrix();
   
  }//end of render

  void update() {  
    super.update();
    
    //color changer
    pathR=centerR+R*sin(a);
    a=+ random(-3,3); 
    pathG=centerG+G*sin(a1);
    a1=a1+random(-3,3);  
    pathB=centerB+B*sin(a2);
    a2=a2+random(-3,3);
   //end color changer
  }
 
  
}//end of class
