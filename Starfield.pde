Particle[] firework = new Particle[(int)(Math.random()*100)+50];
void setup()
{
  size(400,400);
  frameRate(15);
  for(int i = 0; i < firework.length; i++){
    firework[i] = new Particle();
  }
  for(int i = 50; i < firework.length; i+=5){
    firework[i] = new OddballParticle();
  }
}
void draw()
{
  background(0);
  for(int i = 0; i < firework.length; i++){
    firework[i].move();
    firework[i].show();
  }
}
class Particle{
  double myX, myY, speed, angle;
  int x, y, r, g, b;
  Particle(){
    myX = 200;
    myY = 200;
    speed = Math.random()*10;
    angle = Math.random()*2*Math.PI;
    x = 20;
    y = 20;
    r = (int)(Math.random()*256);
    g = (int)(Math.random()*256);
    b = (int)(Math.random()*256);
  }
  void move(){
    myX = myX + ((Math.cos(angle))*speed);
    myY = myY + ((Math.sin(angle))*speed);
    if (myX > 400)
      myX -= 200;
    else if (myX < 0)
      myX += 200;
    if (myY > 400)
      myY -= 200;
    else if (myY < 0)
      myY += 200;
  }
  void show(){
    noStroke();
    fill(r,g,b);
    ellipse((float)myX,(float)myY, x, y);
  }
}

class OddballParticle extends Particle{
  OddballParticle(){
    myX = 200;
    myY = 200;
    speed = Math.random()*3;
    angle = Math.random()*2*Math.PI;
    x = 50;
    y = 50;
    r = (int)(Math.random()*200)+50;
  }
  void show(){
    noStroke();
    fill(r);
    ellipse((float)myX,(float)myY, x, y);
  }
}



