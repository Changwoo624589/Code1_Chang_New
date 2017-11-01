int x;
int y;
float c = 0;
//float cc = 0;

void setup(){
  size(600, 600);
  colorMode(HSB, 360, 100, 100);
 // background(200,100,90);
  rectMode(CENTER);
  noStroke();
  
  x = width/2;
  y = height/2;
}

void draw(){
  fill(0,10);
  rect(x,y, 600, 600);
  pushMatrix();
  float a = 50*cos(c);
  float b = 160*sin(c);
  fill(210, 45,100);
  ellipse(a+250, b+y, 10, 25);
  c -= 0.01;
  popMatrix();
  

  float aa = -50*cos(c);
  float bb = 160*sin(c);
  fill(210, 45,100);
  ellipse(aa+350, bb+y, 10, 25);
  c -= 0.01;
  
  float aaa = 75*cos(c);
  float bbb = 275*sin(c);
  fill(210, 45,100);
  ellipse(aaa+225, bbb+y, 5, 20);
  c -= 0.01;
  
    float aaaa = -75*cos(c);
  float bbbb = 275*sin(c);
  fill(210, 45,100);
  ellipse(aaaa+375, bbbb+y, 5, 20);
  c -= 0.01;

  
  fill(150, 100);
  rect(x, 575, 320, 50);
  rect(x, 500, 100, 100);
  rect(x, 450, 240, 50);
  rect(x, 400, 65, 70);
  rect(x, 350, 150, 30);
  

}