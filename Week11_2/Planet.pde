class Planet{
  float radius;
  float angle;
  float moveSpeed;
  float distance;
  Planet [] planets;
  
  Planet(float r, float d, float m){
    radius = r;
    distance = d;
    angle = random(TWO_PI);
    moveSpeed = m;
  }
  
  void orbit(){
    angle = angle + moveSpeed;
    if(planets !=null){
    for(int i=0; i< planets.length; i++){
      planets[i].orbit();
    }
    }
  }
  
  void spawn(int total, int level){
   // fill(random(40,255));
  planets = new Planet[total];
  for(int i = 0; i< planets.length; i++){
    float r = radius/2;
    float d = random(70, 200);
    float m = random(0.01, 0.07);

    planets[i] = new Planet(r, d/level*2, m);
    if(level <2){
      int num = int(random(0,3));
    planets[i].spawn(num, level+1);
    }
  }
 }
  
  void display(){
    pushMatrix();
    //translate(width/2,height/2);

     stroke(255,0,0,160);
     noFill();
    ellipse(0,0, distance, distance);
    popMatrix();
    
    pushMatrix();

    rotate(angle);
    translate(distance, 0);
     stroke(255);
    
    line(0,0,distance,distance);
    fill(255);
    
    
    noStroke();
    ellipse(0,0, radius*2, radius*2);
    

    if (planets !=null){
    for(int i = 0; i< planets.length; i++){
      planets[i].display();
    }
   }
   popMatrix();
  
  }
}