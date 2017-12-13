import processing.sound.*;

//inspired by Daniel Shiffman
SoundFile soundFile;
SpeedBar speedBar;
Star[] stars = new Star[120];
Comet[] comets = new Comet[60];
int r;
int a;
float b=0;


void setup(){
  //fullScreen(P3D);
  size(1900, 1000, P3D);
  background(0);
  smooth();
  
  soundFile = new SoundFile(this, "Interstellar.mp3");
  //soundFile.play();
  soundFile.loop();
  
  speedBar = new SpeedBar();
  for(int i = 0; i<stars.length; i++){
  stars[i] = new Star();
  }
  
  for(int i = 0; i<comets.length; i++){
    comets[i] = new Comet();
  }
  
  colorMode(HSB, 360,50,40);
  shapeMode(CENTER);


}

void draw(){

  directionalLight(0,0,150, 1,0.2,0);
  //lights();
  background(0);
  translate(width/2, height/2);
  noFill();
//beginShape();
//vertex(30, 20);
//vertex(85, 20);
//vertex(85, 75);
//vertex(30, 75);
//endShape(CLOSE);
  
  for(int i = 0; i<comets.length; i++){
     comets[i].update();
     comets[i].display();
  }
  for(int i = 0; i<stars.length; i++){
  stars[i].display();
  stars[i].update();
  }
  speedBar.display();
 }  
 
 void keyPressed(){
  for(int i = 0; i<comets.length; i++){
    if(key == CODED){
      if(keyCode == UP && comets[i].speed < 55){
        comets[i].speedUp(); 

      }else if (keyCode == DOWN && comets[i].speed > 15){
        comets[i].slowDown(); 

      }
    }
  }
  
    for(int i = 0; i<stars.length; i++){
    if(key == CODED){
      if(keyCode == UP && stars[i].starSpeed < 55){
       stars[i].speedUp(); 
      
      }else if (keyCode == DOWN && stars[i].starSpeed > 15){
        stars[i].slowDown(); 
     
      }
    }
  }
  
      if(key == CODED){
      if(keyCode == UP){

        speedBar.speedUP();
      }else if (keyCode == DOWN){

        speedBar.slowDown();
      }
    }

  }