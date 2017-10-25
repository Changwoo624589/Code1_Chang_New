PImage[] imgB = new PImage[5];
PImage imgF;
PImage[] img = new PImage[6];
PImage[] imgC = new PImage[6];
boolean startGenerator = false;
boolean buttonClicked;
boolean button1 = true;
boolean button2 = false;
boolean button3 = false;
int size;
int h;
int sceneNum = 0;
float hf = 81.5;
int hf2 = 150;


float m, m1;

void setup(){
  size(1200,1040);
  ellipseMode(CENTER);
  background(0);
  smooth();
  loop();
  noStroke();
  h = height/2;
  size = 60;
  frameRate(15);
  imgF = loadImage("Frame.png");
  
  for(int i = 0; i< img.length; i++){
  img[i] = loadImage(i+".jpg");
  }
  for(int i = 0; i< imgB.length; i++){
  imgB[i] = loadImage("button"+ i +".png");
  }
}

void draw(){
 // if(startGenerator==false){
 //println(int(random(female[fRan])));
  //}
  fill(255);

  if(startGenerator){
    
    if(button1){
    pushMatrix();
    translate(300, 0);
    for(int i = 0; i< img.length; i++){
     
    int r = int(random(0, 6));
    int r1 = int(random(0, 6));
    int a = int(random(0, 400));
    int x = int(random(0, 500));
    int y = int(random(0, 850));
    int xx = int(random(0,40));
    imgC[r] = img[r].get(a,160,x,y);
    imgC[r1] = img[r1].get(xx, 0, y, x);
    imgC[i] = img[i].get(xx,700, y, a);
    image(imgC[r], a, 160);
    image(imgC[r1], xx, 0);
    image(imgC[i], xx,700);
   
    }
   popMatrix();
   }
  } else{
  background(0);
  textAlign(CENTER);
  textSize(35);
  text("Press 'SHIFT' to Play Portrait Generator", 725, 520);
  }
  
  if(buttonClicked){
  sceneNum = 1;
  }else{
  sceneNum = 0;
  }
   image(imgF, 0,0);
   image(imgB[2], hf, 460);
   image(imgB[3], hf, 660); 
   image(imgB[4], hf, 860);
  m = map(mouseX, 0, width, 0, 255);
  m1 = map(mouseY, 0, height, 0, 170);
  stroke(m,m1,255);
  strokeWeight(20);
  line(30, 200, 270, 200);
  noStroke();
   if(startGenerator){
   ellipse(hf2, 380, size, size);
   ellipse(hf2, 580, size, size);
   ellipse(hf2, 780, size, size);
   ellipse(hf2, 980, size, size);
   
   fill(255,0,0);
     if(button1){
     ellipse(hf2, 580, size/2, size/2);
     }
     
     if(button2){
     ellipse(hf2, 780, size/2, size/2);
     
       pushMatrix();
        translate(300, 0);
        //for(int i = 0; i<4; i++){
           //for(int r = 0; r<male.length; r++){
            // for(int r1 = 0; r1<male.length; r1++){
        int male[] = {0,2,4};
        int mRan = int(random(0,male.length));
        int i = int(male[int(random(0,2))]);
        int r = int(male[mRan]);
        int r1 = int(male[int(random(1,2))]);
        int a = int(random(0, 400));
        int x = int(random(0, 500));
        int y = int(random(0, 850));
        int xx = int(random(0,40));
        imgC[r] = img[r].get(a,160,x,y);
        imgC[r1] = img[r1].get(xx, 0, y, x);
        imgC[i] = img[i].get(xx,700, y, a);
        image(imgC[r], a, 160);
        image(imgC[r1], xx, 0);
        image(imgC[i], xx,700);
       //      }
       //    }
      //  }
       popMatrix();
     }

      
      if(button3){
     ellipse(hf2, 980, size/2, size/2);
     
        pushMatrix();
        translate(300, 0);
        //for(int i = 0; i< female.length; i++){
        //  for(int r= 0; r< female.length; r++){
        //    for(int r1=0; r1< female.length; r1++){
          int female[] = {1,3,5};
        int fRan = (int)random(0,female.length);
        int j = int(random(0,2));
        int jj = int(random(1,2));
        int i = female[j];
        int r = female[fRan];
        int r1 = female[jj];
        int a = int(random(0, 400));
        int x = int(random(0, 500));
        int y = int(random(0, 850));
        int xx = int(random(0,40));
        imgC[r] = img[r].get(a,160,x,y);
        imgC[r1] = img[r1].get(xx, 0, y, x);
        imgC[i] = img[i].get(xx,700, y, a);
        image(imgC[r], a, 160);
        image(imgC[r1], xx, 0);
        image(imgC[i], xx,700);
        println(r);
       //     }
       //   }
       //}
       popMatrix();
     
     }
   
 }
 
 switch(sceneNum){
 case 0:
   scene0();
   break;
 case 1:
   scene1();
   break;
 //case 2:
 //  scene2();
 //  break;
}
}

void scene0(){
//loop();
image(imgB[0], hf,260);
}

void scene1(){
noLoop();
image(imgB[1], hf, 260);

}

//void scene2(){
//  fill(50,10,0);
//  ellipse(hf2, 380, size/2, size/2);
//}

void keyPressed(){
  if(key == CODED){
    if(keyCode == SHIFT){
      startGenerator = true;
    }
  }
}

void mousePressed(){
 if(calcDist(hf2, 380) <= 30 && startGenerator){
 buttonClicked = !buttonClicked;
 }
 if(calcDist(hf2, 580) <= 30){
   button1 = true;
   button2 = false;
   button3 = false;
 }
 if(calcDist(hf2, 780) <= 30){
   button2 = true;
   button1 = false;
   button3 = false;
 }
 if(calcDist(hf2, 980) <= 30){
   button3 = true;
   button1 = false;
   button2 = false;
 }
}

void mouseReleased(){
if(calcDist(hf2, 380) <= 30){
 loop();
}
}
float dist;
float calcDist(int xPos, int yPos){
  dist = dist(mouseX, mouseY, xPos, yPos);
  return dist;
}