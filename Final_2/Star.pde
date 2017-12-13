class Star{
  float x, y, z;
  float r;
  float b;
  int starSpeed = 35;
  
  float pz;
  Star(){
     x = random(-width/2, width/2);
    y = random(-height/2, height/2);
    z = random(width);
    r= random(0,360);
    pz=z;
  }
  
  void update(){
    z = z-starSpeed;
    if(z<1){
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
    println("star" + starSpeed);
    pz = z;
    }
    
    
  }
  void display(){

  float xx = map(x/z, 0, 1, 0, width);
  float yy = map(y/z, 0, 1, 0, height);
  float s = map(z, 0, width, 6, 0);

    b = random(2,40);
    
  pushMatrix();
  translate(xx,yy);
  //fill(40);
  shapeMode(CENTER);
  //emissive(r, b, b);
  //sphere(s);
  popMatrix();
  float px = map(x/pz, 0, 1, 0, width);
  float py = map(y/pz, 0, 1, 0, height);
  stroke(r,b,b);
  //emissive(r, b, b);
  line(px, py, xx, yy); 
  
  pz = z;
  }


  void speedUp(){
    starSpeed +=2;
  }
  
  void slowDown(){
    starSpeed -=2;
  }

}