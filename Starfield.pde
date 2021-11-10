Particle [] p = new Particle [100];
void setup() {
  size (600,600);
  noStroke();
  for (int i = 0; i < 100; i++)
  p[i] = new Particle();
    for (int i = 0; i < 10; i++)
    p[i] = new OddballParticle();
}
 void draw() {
   background (0,0,0);
   for(int i = 0; i < p.length; i++){
   p[i].show();
   p[i].drift();
   }
 }
class Particle
{
  double myX,myY,mySpeed,myAngle;
  int myColor;
  Particle()
  {
    myX = 300;
    myY = 300;
    myAngle = (Math.random()*2*Math.PI);
    mySpeed = (Math.random()*5);
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void show() {
  fill (myColor);
  ellipse ((float)myX,(float)myY,10.0,10.0);
}
  void drift() {
    myX = myX +mySpeed*Math.cos(myAngle);
    myY = myY + mySpeed*Math.sin(myAngle);
    if (myX > 600)
    myX = 0;
    if (myY > 600)
    myY = 0;
    if (myY < 0)
    myY = 600;
    if (myX < 0)
    myX = 600;
   
  }
}
class OddballParticle extends Particle
{
  OddballParticle(){
  myX = 300;
  myY = 300;
  myAngle =  (Math.random()*2*Math.PI);
  mySpeed =  (Math.random()*.5);
  myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void show() {
    fill(myColor);
    rect((float)myX,(float)myY,10.0,10.0);
  }
  

}
