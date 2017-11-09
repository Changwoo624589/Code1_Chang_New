Ellipse myEllipse;

int num = 800;
Ellipse [][] ellipses = new Ellipse[num][num];
void setup(){
  size(800, 800);
  background(0);
  smooth();
  myEllipse = new Ellipse(0,0);
}
void draw(){
  noStroke();
  myEllipse.display();
  myEllipse.position.add(myEllipse.velocity);
  myEllipse.velocity.add(myEllipse.acceleration);
}

void mousePressed(){
  //ellipses.add(new Ellipse(0,0));
}