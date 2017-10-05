

void setup(){
  size (1000, 1000);
  background(0);
  colorMode(HSB);
}

void draw(){

  stroke(255);
  
  for(int i = -20; i <= 1000; i+=40){
    for(int j = -20; j <= 1000; j+=15){
      if (i % 3 == 0 && j % 2 == 0){
       //if(j>0){
          //translate(50,0);}
      line(i,j,i+50,j+50);
      }else{
      line(i,j+50,i+50,j);
      
      }
  }
 }
 
  noStroke();
  rectMode(CENTER);
  
float c = 0;
  
  
  for(int y = 20; y <= height; y+=80){
    for(int x = 25; x<= width; x+=120){
      
      
      if (c>=255){
      c=0;
      }else{c++;}
      //for(int c = 0; c <= 255; c++){
      //if(c>=255){
      // c=0;} 
     //float dist = dist(mouseX, mouseY, 0, 255);
     //float c = map(dist, 0, width, 0,255);
     fill(c, 255, 255, 25);
     //fill(map(dist, 0, width, 0,255), map(dist, 0, width, 0,255),map(dist, 0, width, 0,255));
    
      //rotate(PI/2);
      rect(x,y, 15, 15);
      
      
   //translate(20, 20);
    //}
  }
 }
}