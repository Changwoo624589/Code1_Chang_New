class Comet{
  float x, y, z;
  PShape[] comet = new PShape[3];
 float rx, ry;
 float rot;
  Comet(){
    //rotateY(rot += 5);
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
    for(int i = 0; i<comet.length; i++){
    comet[i] = loadShape("comet"+i+".obj");
   }
  }
  
  void update(){

    z = z-10;
    if(z<1){
        x = random(-width, width);
    y = random(-height, height);
    z = random(width);
    //rx = random(-width, width);
    //ry = random(-height, -height);
    }
    for(int i=0; i<comet.length; i++){
      if(i ==0){
         random(x);
         random(y);
      }
      if(i ==1){
       random(x);
       random(y);
       }
    }
  }
  
  void display(){
    float xx = map(x/z, 0, 1, 0, width);
    float yy = map(y/z, 0, 1, 0, height);
    float s = map(z, 0, width, 250, 0);
    random(xx);
    random(yy);
       pushMatrix();
      translate(xx, yy);
      
      popMatrix();
    
      fill(255);
    ellipse(xx, yy, s, s);
    for(int i = 0; i<comet.length; i++){

     shape(comet[i], xx, yy, s, s);

   }

 }

}