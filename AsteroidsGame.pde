//your variable declarations here
Star [] epic;
Spaceship lavabucket;
public void setup() 
{
  size(500,500);
  lavabucket = new Spaceship();
  epic = new Star [500];
  
  
    for(int i =0; i < epic.length; i++) {
    epic[i] = new Star();
  }

  //your code here
}
public void keyReleased() {
   if (key == 'w') {
   lavabucket.setYSpeed(0);
   lavabucket.setXSpeed(0);
 }
 
 if(key == 's') {
   lavabucket.setYSpeed(0);
   lavabucket.setXSpeed(0);
 }
 
 if (key == 'h') {
   int ding = (int)(Math.random()*500);
   int speed = (int)(Math.random()*500);
   int wilbur = (int)(Math.random()*360);
   lavabucket.setX(ding);
   lavabucket.setY(speed);
   lavabucket.setYSpeed(0);
   lavabucket.setXSpeed(0);
   lavabucket.setDirect((double)wilbur);
 }
}

public void draw() 
{
  background(0);
   noStroke();
    for(int i =0; i < epic.length; i++) {
    epic[i].show();
  }
  
   lavabucket.show();
  lavabucket.move();
  //your code here
}


public void keyPressed() {
 if (key == 'w') {
  lavabucket.accelerate(.1); 

 }
 
 if(key == 's') {
  lavabucket.accelerate(-.1); 
 }
 
  if(key == 'd') {
  lavabucket.turn(10); 
 }
 
 if(key == 'a') {
  lavabucket.turn(-10); 
 }

}


