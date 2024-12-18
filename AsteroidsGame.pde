//boooooom
Star [] waterbucket;
Spaceship higuys;
ArrayList<Astroids> minion;
public void keyReleased() {
   int ding = (int)(Math.random()*500);
   int speed = (int)(Math.random()*500);
   int strawberry = (int)(Math.random()*360);
 if (key == 'w'){
higuys.accelerate(-.05);
 }
 if (key == 'h') {
   higuys.setX(ding);
   higuys.setY(speed);
   higuys.setYSpeed(0);
   higuys.setXSpeed(0);
   higuys.setDirect((double)strawberry);
 }
}
public void keyPressed() {
 if (key == 'w') {
  higuys.accelerate(.1); 

 }
 
 if(key == 's') {
  higuys.accelerate(-.1); 
 }
 
  if(key == 'd') {
  higuys.turn(20); 
 }
 
 if(key == 'a') {
  higuys.turn(-20); 
 }

}

public void setup() 
{
  size(500,500);
  minion = new ArrayList<Astroids>();
  higuys = new Spaceship();
  waterbucket = new Star [500];
  
  
    for(int i =0; i < waterbucket.length - 50 ; i++) {
    waterbucket[i] = new Star();
  }for (int i = 450; i < waterbucket.length;i++){
    waterbucket[i] = new bigStar();
  }for(int i = 0; i < 20; i++){
    minion.add(new Astroids());
  }
}

public void draw() 
{
  background(0);
   noStroke();
    // Check for collision
//float distance = dist(higuys.myCenterX,higuys.myCenterY,minion.myCenterX, minion.myCenterY);
    for(int i =0; i < waterbucket.length; i++) {
   waterbucket[i].show();
  }for(int i = 0; i < minion.size(); i ++){
    minion.get(i).move();
    minion.get(i).show();
    minion.get(i).accelerate(Math.random() / 25);
    if(dist(higuys.getX(),higuys.getY(), minion.get(i).getX(), minion.get(i).getY())<20){
      minion.remove(i);
      i--;
    }
  }
  higuys.show();
  higuys.move();
}
