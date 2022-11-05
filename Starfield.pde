class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor,mySize;
  Particle(){
    mySize=10;
    myX = 300;
    myY = 300;
    mySpeed = (Math.random()*11)-6;
    myAngle = (Math.random()*2*Math.PI);
    myColor = color((int)(Math.random()*256)/*,(int)(Math.random()*256),(int)(Math.random()*256)*/);
  }
  void move(){
   myX = myX + ((Math.cos(myAngle))*mySpeed);
   myY = myY + ((Math.sin(myAngle))*mySpeed);
   if(myX > 600 || myX <0){
     myX = 300;
     myY =300;
   }
   if (myY<0 || myY>600){
   myX = 300;
   myY = 300;
   }
  }
  void show(){
    fill(myColor);
    ellipse((float)myX,(float)myY,mySize,mySize);
  }
}

class OddballParticle extends Particle{
  OddballParticle(){
    myX = myY = 300;
    mySpeed = Math.random()*8;
    myAngle = (Math.random()*Math.PI*2);
    myColor = color(255,255,0);
    mySize = 25;
  }
}


Particle[] firework;  
OddballParticle cats;
void setup(){
  size(600,600);
  firework = new Particle[300];
  cats = new OddballParticle();
  for(int i=0;i<firework.length;i++)
  firework[i] = new Particle();
  for (int i=0;i<10;i++)
  firework[i] = new OddballParticle();
}

void draw(){
  background(0);
  for (int i = 0; i<firework.length; i++){
  firework[i].move();
  firework[i].show();
  }
  cats.move();
  cats.show();
}
