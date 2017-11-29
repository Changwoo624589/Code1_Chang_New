//inspired by Daniel Shiffman

//PShape[] comet = new PShape[3];
Comet[] comets = new Comet[100];
int r;
int a;
float b=0;


void setup(){
  size(1900, 1000, P3D);
  background(0);
  smooth();
  for(int i = 0; i<comets.length; i++){
    comets[i] = new Comet();
  //comet[i] = loadShape("comet"+i+".obj");
  }
  
  colorMode(HSB, 360,100,100);
  

}

void draw(){
  directionalLight(0,0,150, 1,0.2,0);

  background(0);
  //pushMatrix();
  //rotateY(b += 1);
  translate(width/2, height/2);
  


  for(int i = 0; i<comets.length; i++){

     comets[i].update();
     comets[i].display();

  }

}