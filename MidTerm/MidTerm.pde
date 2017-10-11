float dist;
int w, h;
int cs;
boolean buttonClicked;
boolean circleOver =false;
boolean buttonOn =false;
boolean textOn = true;
float rot = 0;
float ranS = random(130, 240);
float deg = 0;


void setup(){
  size(1000, 1000);
  ellipseMode(CENTER);
  smooth();
  w = width/2;
  h = height/2;
  cs =80;
  
  frameRate(25);
  
}

void draw(){
  background(255);
  noStroke();
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
      for(int i = 0; i <= 47; i++){
        noFill();
        stroke(255); 
        //ellipse(i, i, 40 *i, 40*i);
        //pushMatrix();
        //translate(500, 500);
        //ellipse(i, i, 40 *i, 40*i);
        //popMatrix();
        
        
        pushMatrix();
       
        translate(w,h);
        rot += 60;
        rotate(rot);
         //for(int j = 50; j <= 250; j +=25){
         //  if(j >= 250){
         //    j -= 25;}
         //    else if(j < 50){
         //    j +=25;
         //  }
          //fill(0, 80, 255, 15);
          stroke(255, 200, 50, 255);
          strokeWeight(1);
          ellipse(180, 0, ranS-20, ranS-20);
          noFill();
          strokeWeight(1);
          stroke(150, 200, 0, 200);
          ellipse(0, 180, ranS+50, ranS+50);
          popMatrix();
          
          pushMatrix();
          
          //float dist = dist(mouseX, mouseY, width, height);
          blendMode(REPLACE);
          translate(w,h-165.66);
         // rotate(map(dist, width, 0 , 0, 360));
          stroke(255,50,0, 200);
          strokeWeight(2 );
          triangle(-300,0,300,0,0,500);
          
          popMatrix();
  
      }
         
         
      }
    

    if(circleOver){
      stroke(0);
      fill(90);
      cs = 90;
    }else{
      cs = 80;
      fill(0);
    }
   }
  


void update(int xPos, int yPos){
  if (overCircle (w, h, cs)){
    circleOver = true;
  }else{
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
  if(buttonOn){
    if(calcDist(w, h) <=40){
      buttonClicked = true;
    }
  }
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