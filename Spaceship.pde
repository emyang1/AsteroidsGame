class Spaceship extends Floater{   
  public Spaceship(){
    corners = 4;
    xCorners = new int[]{-5, 10, -5, -2};
    yCorners = new int[]{-5, 0, 5, 0};
    myColor = 255;
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 1;
    myYspeed = 1;
    myPointDirection = 0;
  }
  public void setXspeed (double x){
    myXspeed = x;
  }
  public void setYspeed (double y){
    myYspeed = y;
  }
  public void setCenterX (int x){
    myCenterX = x;
  }
  public void setCenterY (int y){
    myCenterY = y;
  }
}
