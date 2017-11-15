class Planet{
  float radius;
  PVector position;
  PVector v;
  float distance;
  Planet[] planets;
  
  Planet(float r, float d){
    radius = r;
    distance = d;
    v = PVector.random3D();
    v.mult(d);
//position = new PVector(width/2, height/2);
  }

  void display(){
    pushMatrix();
    fill(255);
    translate(v.x,v.y,v.z);
    sphere(radius);
  if (planets !=null){
    for (int i = 0; i < planets.length; i++){
      planets[i].display();
    }
  }
  popMatrix();
 }
 //void spawn(int num){
 //  int total = 2;
 //  planets = new Planet[num];
 //  float r = 20;
 //  float d = 60;
 //  planets[total] = new Planet(r,d);
 //  planets[total].spawn(total);

   //for (int i = 0; i<planets.length; i++){
   //  float r = random(20, 35);
   //  float d = 100;
    //int a = 2;
   //  planets[i] = new Planet(r, d);
    // planets[2].spawn(a);
  // }
 //}
 
 void planet2(){
   translate(200,230);
   sphere(30);
 
 }
   

}