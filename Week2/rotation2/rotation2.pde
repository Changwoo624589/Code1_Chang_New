int x, y;


void setup(){
  size(600, 600);
  background(255);
  
  x = 300;
  y = 300;
  
  smooth();
  fill(130);
  noStroke();
  rect(40,40,40,40);
  rectMode(CENTER);
  
  pushMatrix();
  translate(60, 60);
  rectMode(CENTER);
  rotate(radians(45));
  fill(0);
  rect(0, 0, 40, 40);
  popMatrix();
  
  ellipseMode(CENTER);
  
}

void draw(){
  //if whatever inside the parenthesis is true then
  //do whatever is inside the curly brackets
  int x = 10;
  if(frameCount % 10 == 0){
  fill(random(0,255), random(0, 255), random(0,255));
  pushMatrix();
  translate(300, 300);
  rotate(radians(frameCount*4 % 360));
  ellipse(100, 100, 200, 450);
  fill(random(0,255));
  rect(0, 0, 80, 20);
  popMatrix();
  
  pushMatrix();
  translate(300, 300);
  rotate(radians(frameCount*4 % 360));
  fill(random(0,255));

  triangle(x+15, y, x, y + 15, x + 15, y + 15); 
  popMatrix();
  }
}