class Ellipse{
  PVector velocity;
  PVector acceleration;
  PVector position;
  PVector translater;
  float size;
  
  Ellipse(float _xPos,float _yPos){
   position = new PVector (random(0,width),0);
   translater = new PVector (_xPos, _yPos);
   velocity = new PVector(0,0);
   acceleration = new PVector(0,0.2);
   size = 20;
  }
  
  void display(){
    fill(255);
    size -=0.15;
    ellipse(position.x + translater.x, position.y + translater.y, size, size);
    
  }
  
  
}