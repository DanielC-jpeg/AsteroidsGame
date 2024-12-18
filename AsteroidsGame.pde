//boooooom
Star [] waterbucket;
Spaceship letsgetit;
ArrayList<Astroids> celi;
public void keyReleased() {
   int ding = (int)(Math.random()*450);
   int speed = (int)(Math.random()*450);
   int mongoose = (int)(Math.random()*350);
 if (key == 'w'){
letsgetit.accelerate(-.05);
 }
 if (key == 'h') {
   letsgetit.setX(ding);
   letsgetit.setY(speed);
   letsgetit.setYSpeed(0);
   letsgetit.setXSpeed(0);
   letsgetit.setDirect((double)mongoose);
 }
}
public void keyPressed() {
 if (key == 'w') {
  letsgetit.accelerate(.1); 

 }
 
 if(key == 's') {
  letsgetit.accelerate(-.1); 
 }
 
  if(key == 'd') {
  letsgetit.turn(20); 
 }
 
 if(key == 'a') {
  letsgetit.turn(-20); 
 }

}

public void setup() 
{
  size(800,800);
  celi = new ArrayList<Astroids>();
  letsgetit = new Spaceship();
  waterbucket = new Star [500];
  
  
    for(int i =0; i < waterbucket.length - 50 ; i++) {
    waterbucket[i] = new Star();
  }for (int i = 450; i < waterbucket.length;i++){
    waterbucket[i] = new bigStar();
  }for(int i = 0; i < 20; i++){
    celi.add(new Astroids());
  }
}

public void draw() 
{
  background(0);
   noStroke();
    // Check for collision
//float distance = dist(letsgetit.myCenterX,letsgetit.myCenterY,celi.myCenterX, celi.myCenterY);
    for(int i =0; i < waterbucket.length; i++) {
   waterbucket[i].show();
  }for(int i = 0; i < celi.size(); i ++){
    celi.get(i).move();
    celi.get(i).show();
    celi.get(i).accelerate(Math.random() / 25);
    if(dist(letsgetit.getX(),letsgetit.getY(), celi.get(i).getX(), celi.get(i).getY())<20){
      celi.remove(i);
      i--;
    }
  }
  letsgetit.show();
  letsgetit.move();
}
