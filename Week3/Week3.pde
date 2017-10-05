float x1, y1;
float x2, y2;
float x3, y3;
float x4, y4;
float x5, y5;
float r, g, b;
int textSize;
int textBoxSizeX;
int textBoxSizeY;

void setup(){
  size(1000, 1000);
  background(0);
  noStroke();
  smooth(3);
  //blendMode(DIFFERENCE);
  textSize = 50;
  textBoxSizeX = 150;
  textBoxSizeY = 250;
}

void draw(){
  //println("hello");
  //println(addNumbers(4, 5));
  //println(addNumbers(int(random(0,4)), 2));
  //println(addNumbers(4,3));
  
  //fill(random(0,255), random(0, 255), random(0, 255), 10);
  //float x1 = map(mouseX, 0, width, 0, 1000);
  //ellipse(x1, random(0,1000), 50, 50);
  //float x2 = map(mouseX, 0, width, 0, 1000);
  //ellipse(x2, random(0,1000), 50, 50);
  //float y1 = map(mouseY, 0, height, 0, 1000);
  //ellipse(y1, random(0,1000), 50, 50);
  //float y2 = map(mouseY, 0, height, 0, 1000);
  //ellipse(y2, random(0,1000), 50, 50);
  //float x3 = map(mouseX, 0, width, 0, 1000);
  //ellipse(x1, random(0,1000), 50, 50);
  //float x4 = map(mouseX, 0, width, 0, 1000);
  //ellipse(x2, random(0,1000), 50, 50);
  //float y3 = map(mouseY, 0, height, 0, 1000);
  //ellipse(y1, random(0,1000), 50, 50);
  //float y4 = map(mouseY, 0, height, 0, 1000);
  //ellipse(y2, random(0,1000), 50, 50);
  //g = map(mouseX, 500, width, 0, 255);
  //b = map(mouseY, 500, height, 0, 255);
  //background(0, g, b);
  noStroke();
  fill(0, random(0, 255), random(0, 255), 25);
  rectMode(CENTER);
  rect(x5, y5, random(30,500), random(30,500));
  
  fill(random(0, 255), 0, random(0, 255), 80);
  triangle(x5, 500, y5, 250, 500, 900);
  

  stroke(255, 75);
  strokeWeight(2);
  strokeCap(SQUARE);
  line(500, 900, x5, y5);
 
  if(mousePressed){
    fill(255, 45);
    textSize(textSize);
    String s = "$ % # * @ ^ + = !";
    //text(s, x5, y5, 150, 250);
    text(s, x5, y5,  textBoxSizeX, textBoxSizeY);
  }
 
    x5 = mouseX;
    y5 = mouseY;
}
void keyPressed(){
  if(key == CODED){
    if(keyCode == UP && textSize < 100){
      textSize += 10;
    }else if(keyCode == DOWN && textSize >50){
      textSize -= 10;
    }
  }

  if(key == CODED){
    if(keyCode == UP && textBoxSizeX < 300){
      textBoxSizeX += 25;
    }else if(keyCode == DOWN && textBoxSizeX >150){
      textBoxSizeX -= 25;
    }
  }

  if(key == CODED){
    if(keyCode == UP && textBoxSizeY < 500){
      textBoxSizeY+= 35;
    }else if(keyCode == DOWN && textBoxSizeY >250){
      textBoxSizeY -= 35;
    }
  }



}
  //if(mouseX<width/2){
  //  x5 = mouseX;
  //  y5 = mouseY;
  //}else{
  //  x5 = width/2;
  //  y5 = mouseY;
  //}



//int addNumbers(int a, int b){
//  return a+b;
//}