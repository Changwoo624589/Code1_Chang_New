class Comet{
  float x, y, z;
  PShape[] comet = new PShape[3];
 float rx, ry;
 float rot = 0;
 int r = int(random(0, comet.length));
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


      //fill(255);
    //sphere(s);
    //for(int i = 0; i<comet.length; i++){
     pushMatrix();
     translate(xx,yy);
     rotateX( rot += 0.01);
     rotateY( rot += 0.02);
     shape(comet[r], 0, 0, s*0.9, s*0.9);
     popMatrix();
   //}

 }

}