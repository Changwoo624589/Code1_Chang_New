int x;
int y;
float x2, y2;
float x3, y3;
float xx, yy;
int size;
float dist;
boolean buttonClicked;
boolean click = false;
float rot = 0;

void setup(){
 size(800, 800);
 size = 100;
 x = width/2;
 y = height/2;
 xx +=5 ;
 yy = 0;
smooth();
rectMode(CENTER);
frameRate(25);
blendMode(DIFFERENCE);


x2 = 400;
y2 = 400;
x3 = 100;
y3 = 100;
}

void draw(){

  
  if(buttonClicked){
    background(0);
    fill(random(0, 255), 0, random(0, 255));
  }else{
    background(255);
    fill(random(0, 100), random(0, 255), 0);
  }
noStroke();
ellipse(x, y, size, size);
//println(calcDistance(x, y));
stroke(2);
  if(click == false){
   fill(255);
   textAlign(CENTER, CENTER);
   text("Button", x, y);
   textSize(25);
  }
  

  rot+=2;
  translate(xx, yy);
  rotate(rot);
  rect(yy, xx, 50, 50);
  rect(xx, yy, 50, 50);
  rect(50, xx, 50, 50);
  rect(20, 20, 15, 15);
  rect(20, 20, 25, 5);
  
  pushMatrix();
  translate(45, 45);
  rect(yy, xx, 40, 15);
  rect(xx, yy, 50, 50);
  rect(20, 20, 15, 15);
  rect(20, 20, 25, 5);
  popMatrix();
  
  if(xx < width){
  xx += 10;
  }
  if(yy < height){
  yy += 5;
  }
  if(xx >= width){
  xx = 0;
  }
  if(xx < 0){
  xx += 10;
  }
  if(yy >= height){
    yy = 0;
  }
  
}

  void pattern(float x, float y, int radius, int level){
  float colour = 200 * level/8.0;
  fill(colour, 100);
  ellipse(50, 50, 15, 35);
  ellipse(50, 50, 35, 15);
  }
  

void mousePressed(){
  if(calcDistance(x, y) <= 50){
  buttonClicked = !buttonClicked;
      if(click == false){
  click = true;
  }
}


}

float calcDistance(int xPos, int yPos){
  dist = dist(mouseX, mouseY, x, y);
  return dist;
}