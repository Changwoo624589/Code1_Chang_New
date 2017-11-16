Planet planet;

void setup(){
  size(800, 800);
  smooth();
  frameRate(45);
  planet = new Planet(50, 0, 0);
  planet.spawn(5, 1);
}

void draw(){
  background(0);
  translate(width/2, height/2);
  planet.display();
  planet.orbit();
}