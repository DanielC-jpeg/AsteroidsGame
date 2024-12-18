class Star 
{
   private double myX,myY;
 private  int myColor;
   public Star(){
    myX = (int)(Math.random()*450);
    myY = (int)(Math.random()*450);
    myColor = color((int)(Math.random()*255) ,(int)(Math.random()*255),255);
  }
  
   void show(){
     fill(myColor);   
     ellipse((float)myX, (float)myY, 5,5);
  }
}
class bigStar extends Star{
    public bigStar(){
    myX = (int)(Math.random()*750);
    myY = (int)(Math.random()*750);
    myColor = color((int)(Math.random()*255) ,(int)(Math.random()*255),(int)(Math.random()*255));
  }
  void show(){
  fill(myColor); 
  ellipse((float)myX, (float)myY, 9,9);
     }
}
