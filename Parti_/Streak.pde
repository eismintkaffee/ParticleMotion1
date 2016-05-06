//Tiffany Ulep
//AME 494: Animating for Virtual Worlds
//Particle Assignment
//Due: 10/29/2015

class Streak extends Particle{
  PVector CurrentLoc;
  PVector PrevLoc;

  
//  //ref:http://www.openprocessing.org/sketch/45098
//  //variables to change the color ranges, RGB based
  float R=125;
float centerR=125;
float a=PI/2;
float a1=PI;
float a2=3*PI/2;
float pathR=125;
float pathG=125;
float G=125;
float centerG=125;
float pathB=125;
float B=125;
float centerB=125;

//  //end color variables
 
  Streak(PVector loc){ //how to get previous location from last frame
    super(loc);
    CurrentLoc = loc.get();
    PrevLoc = new PVector(0,0,0);
    CurrentLoc = new PVector(0,0,0);
  }
  
  void update(){
    super.update();
    
    //color changer
    pathR=centerR+R*sin(a);
  a=a+.05;
   
  pathG=centerG+G*sin(a1);
  a1=a1+.05;
   
  pathB=centerB+B*sin(a2);
  a2=a2+.05;

    //end color changer
  }
  
   void render(){

    
    float angle = atan2(velocity.y,velocity.x);
    float scalar = velocity.mag(); //used to decrease length of line
    
    pushMatrix();
    rectMode(CENTER);
    translate(location.x,location.y);
    rotate(angle);
    stroke(pathB,pathG,pathR,lifespan);
    
    strokeWeight(2);
    //*********
    
    line(PrevLoc.x+ (scalar * 5), PrevLoc.y, CurrentLoc.x, CurrentLoc.y);
 
    popMatrix();

     
  }

}
