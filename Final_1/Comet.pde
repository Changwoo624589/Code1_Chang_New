class Comet{
  float x, y, z;
  PShape[] comet = new PShape[3];
 
  Comet(){
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
    for(int i = 0; i<comet.length; i++){
    comet[i] = loadShape("comet"+i+".obj");
   }
  }
  
  void update(){
    z = z-1;
    if(z<1){
        x = random(-width, width);
    y = random(-height, height);
    z = random(width);
    }
  }
  
  void display(){
    float xx = map(x/z, 0, 1, 0, width);
    float yy = map(y/z, 0, 1, 0, height);
    //if(comet != null){
    for(int i = 0; i<comet.length; i++){
    shape(comet[i], xx, yy);
   // }
   }
   
 }

}