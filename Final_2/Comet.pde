class Comet{
  float x, y, z;
  PShape[] comet = new PShape[3];
 float rx, ry;
 float rot = 0;
 int r;
 int speed = 35;
  Comet(){

    //rotateY(rot += 5);
    x = random(-width/2, width/2);
    y = random(-height/2, height/2);
    z = random(width);
    for(int i = 0; i<comet.length; i++){
    comet[i] = loadShape("comet"+i+".obj");
   }
  }
  
  void update(){

    z = z-speed;
    if(z<1){
        x = random(-width, width);
    y = random(-height, height);
    z = random(width);
    r = int(random(0, comet.length));

    println("comet" + speed);
    }
  }

  void speedUp(){
    speed +=2;
  }
  
  void slowDown(){
    
    speed -=2;
  }

  
  void display(){

    float xx = map(x/z, 0, 1, 0, width);
    float yy = map(y/z, 0, 1, 0, height);
    float s = map(z, 0, width, 280, 0);
    //float sy = map(z, 0, height, 300, -20);


      //fill(255);
    //sphere(s);
    //for(int i = 0; i<comet.length; i++){
     pushMatrix();
     noStroke();
     shapeMode(CENTER);
     translate(xx,yy);
     rotateX( rot += 0.01);
     rotateY( rot += 0.02);
     shape(comet[r], 0, 0, s*0.9, s*0.8);
     popMatrix();
     //println(r);
   //}

 }

}