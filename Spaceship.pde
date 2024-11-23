Star [] letsgo;
Spaceship bob;
public void setup() 
{
  size(500,500);
  bob = new Spaceship();
  letsgo = new Star [500];
  
  
    for(int i =0; i < letsgo.length; i++) {
    letsgo[i] = new Star();
  }


}
public void draw() 
{
  background(0);
   noStroke();
    for(int i =0; i < letsgo.length; i++) {
     
    letsgo[i].show();
  }
  
   bob.show();
    bob.move();

}


public void keyPressed() {
 if (key == 'w') {
  bob.accelerate(.1); 

 }
 
 if(key == 's') {
  bob.accelerate(-.1); 
 }
 
  if(key == 'd') {
  bob.turn(10); 
 }
 
 if(key == 'a') {
  bob.turn(-10); 
 }

}


public void keyReleased() {
   if (key == 'w') {
   bob.setYSpeed(0);
   bob.setXSpeed(0);
 }
 
 if(key == 's') {
   bob.setYSpeed(0);
   bob.setXSpeed(0);
 }
 
 if (key == 'h') {
   int x = (int)(Math.random()*500);
   int i = (int)(Math.random()*500);
   int higuys = (int)(Math.random()*360);
   bob.setX(x);
   bob.setY(i);
   bob.setYSpeed(0);
   bob.setXSpeed(0);
   bob.setDirect((double)higuys);
