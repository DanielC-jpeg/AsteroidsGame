class Spaceship extends Floater  
{   
    public Spaceship() {
     corners = 3;
      myCenterY = 250;
      myCenterX = 250;
     xCorners = new int[corners];
     yCorners = new int[corners];
     xCorners[0] = -8;
     yCorners[0] = -8;
     xCorners[1] = 16;
     yCorners[1] = 0;
     xCorners[2] = -8;
     yCorners[2] = 8;
     myColor = color(255);
     
    }
    
   public void setX(int x) {
     myCenterX = x;
   }
   
   public void setY(int x) {
     myCenterY = x;
   }
   
      public void setXSpeed(int x) {
     myYspeed = x;
   }
   
   public void setYSpeed(int x) {
     myXspeed = x;
   }
   
   public void setDirect(double x) {
     myPointDirection = x;
   }
}
