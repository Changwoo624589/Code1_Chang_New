Planet planet;

void setup(){
size(600, 600, P3D);
background(0);
noStroke();
smooth();
planet = new Planet(60, 0);
//planet.spawn(1);
}


void draw(){
  lights();
  //lightSpecular(500, 204, 204);
  translate(width/2,height/2);
  background(0);
 
  planet.display();
  planet.planet2();
}