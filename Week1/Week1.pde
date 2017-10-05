int w;
int h;
float myFloat;
String ttext;


void setup(){
 
 ttext = "HI NY"; 
 //myFloat = .5;
 w = 560;
 h = 560;
 
 println(ttext);
 
 size(600, 600);
 background(255, 0, 50);
 noStroke();
 frameRate(5);
 textSize(190);
}
  
  
  
  void draw(){
  rectMode(CENTER);
  fill(random(0,255));
  rect(width = 300, height = 300, w, h);
  
  fill(255, 0, 50);
  rect(width = 300, height = 300, 545, 545);

  //fill(0, 0, random(0, 255));
  //ellipse(width = 350, height = 135, 80, 80);
  //ellipse(width = 400, height = 135, 80, 80);
 
  fill(random(0,255), 0, 50);
  triangle(375, 230, 310, 135, 440, 135);
  
 
  
  arc(345, 135, 70, 70, PI, TWO_PI);
  arc(405, 135, 70, 70, PI, TWO_PI);
  
  //fill(0, 255, 0);
  //text(ttext, width = 150, height = 300);
  
  fill(255);
  text("I NY", 325, 450, 300, 800);
  }