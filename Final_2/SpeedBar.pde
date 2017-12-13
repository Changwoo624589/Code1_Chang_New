class SpeedBar{
  int h = 0;
  SpeedBar(){
  
  
  }
  
  void display(){
 pushMatrix();
  fill(200, 100 , 100, 200);
  rotateY(b = -20);
   //ellipse(0, 0, 140, 140);
   emissive(20+h*3,100,170);
   
   //int num =0;
   //if (h <= -20){
   //num = 1;
   //}
   //switch(num){
   //  case 0:
   //emissive(220,20,70);
   //  break;
     
   //  case 1:
   //  emissive(200,0,0);
   //  break;
   //}
   noStroke();
   quad(620, 70+h, 640, 70+h, 640, 120, 620, 120);
   noFill();
   stroke(255);
   strokeWeight(6);
    quad(620, 20, 640, 20, 640, 120, 620, 120);
   fill(200, 255, 150);
   
    textSize(18);
    text("Speed", 601, 140);
 popMatrix();
  }
  
  void update(){

  }
  
  void speedUP(){
  if(h>55||h > -50){
  h -= 5;
  
  }
  }
  
  void slowDown(){
   if(h<50 || h>90){
    h += 5;
   }
  }
}