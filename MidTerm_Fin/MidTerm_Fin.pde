float dist;
int w, h;
int cs;
boolean buttonClicked;
boolean buttonClicked2;
boolean circleOver =false;
boolean buttonOn =false;
boolean buttonOn2 = false;
boolean textOn = true;
boolean click =true;
float rot ;
float ranS = random(130, 240);
float deg = 0;
//image & crop image
PImage[] img = new PImage[4];
PImage[] imgC = new PImage[4];

void setup(){
  size(1000, 1000);
  ellipseMode(CENTER);
  smooth();
  loop();
  w = width/2;
  h = height/2;
  cs =80;

  frameRate(25);

  for(int i = 0; i< img.length; i++){
   
img[i] = loadImage(i+".jpg");
  }

}

void draw(){
  background(255);
  noStroke();
  float c = map(mouseX, 0, width, 20, 255);
  float d;
    if(textOn){
    textAlign(CENTER);
    text("CONTROL", w, h);
    textSize(50);
    }
 
  if(buttonOn){
    
    ellipse(w, h, cs, cs);
    textOn = false;
  }
  update (mouseX, mouseY);
  
    if(buttonClicked){
    background(0);
    
    stroke(0, 50, 255);
    line(w,h, mouseX, 0);
    line(w,h, 0, mouseY);
    line(w,h, height, -mouseY);
    line(w,h, mouseX, 1000);
    //button2
    ellipse(w, h, cs, cs);
    buttonOn2 = true;
      for(int i = 0; i <= 10; i++){
        
        noFill();
        stroke(255); 
        
          pushMatrix();
       
          translate(w,h);
          rot += 60;
          rotate(rot);
          stroke(255, c, c, 255);
          strokeWeight(1);
          ellipse(180, 0, ranS, ranS);
          noFill();
          strokeWeight(i);
          stroke(150, 200, 0, 200);
          d = dist(mouseX,mouseY, width, height);
          map(d, 0, width, 20, 600);
          ellipse(0, 180,map(d, 0, width, 20, 300),map(d, 0,height, 20, 300));
          
          popMatrix();
         ///////////////////////////////////////// 
          pushMatrix();
          
          
          blendMode(REPLACE);
          translate(w,h-165.66);
         // rotate(map(dist, width, 0 , 0, 360));
          stroke(255,50,0, 200);
          strokeWeight(2);
          triangle(-300,0,300,0,0,500);
          
          popMatrix();
        
      }
         
         
      }
    

    if(circleOver){
      stroke(0);
      fill(90);
      cs = 90;
      if(buttonOn2){
      fill(255,50,0);
    }
    }else{
      cs = 80;
      fill(0);
    }
   if(buttonClicked2){
   loop();
   clear();
   fill(255);
   pushMatrix();
   translate(15, 350);
   rotate(PI/2.0);
   
   text("Click to Play / Pause",5,0);
   
   popMatrix();
   pushMatrix();
   translate(75,0);
   //rect(w, h, 40, 40);
   //imageMode(CENTER);
   for(int i = 0; i< img.length; i++){
   
  int r = int(random(0, 4));
  int r1 = int(random(0, 4));
  int a = int(random(0, 300));
  int x = int(random(80, 500));
  int y = int(random(0, 850));
  int xx = int(random(0,40));
  imgC[r] = img[r].get(a,160,x,y);
  imgC[r1] = img[r1].get(20, 30, y, x);
  imgC[i] = img[i].get(xx,700, y, a);
  image(imgC[r], a, 160);
  image(imgC[r1], 20, 30);
  image(imgC[i], xx,700);
     if(click){
 
       noLoop();
     }
  }
   popMatrix();
   }

 }
  


void update(int xPos, int yPos){
  if (overCircle (w, h, cs)){
    circleOver = true;
  }else{
    circleOver = false;
  }
  if(buttonClicked2){
  circleOver = false;
  }
}

void keyPressed(){
  if (key == CODED){
    if (keyCode == CONTROL){
      buttonOn = true;
    }
  }
}

void mousePressed(){
  click = !click;
  
 
    
  if(buttonOn){
    if(calcDist(w, h) <=40){
      buttonClicked = true;
    }
  }
  if(buttonOn2){
    if(calcDist(w, h) <=40){
      buttonClicked2 = true;
    }
  }
}

void mouseReleased(){
    loop();
}

float calcDist(int xPos, int yPos){
  dist = dist(mouseX, mouseY, xPos, yPos);
  return dist;
}

boolean overCircle(int xPos, int yPos, int diameter){
  float disX = xPos - mouseX;
  float disY = yPos - mouseY;
    if (sqrt(sq(disX) + sq(disY)) < diameter/2  && buttonOn) {
    return true;
    }else { 
    return false;
    }
}