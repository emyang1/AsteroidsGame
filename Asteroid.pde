class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners = 4;
    xCorners = new int[]{-11, 4, 16, -3, -16};
    yCorners = new int[]{-7, -11, 4, 12, 5};
    myColor = 100;
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 1;
    myYspeed = 1;
    myPointDirection = 0;
    rotSpeed = Math.random()*20-10;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
    }
  }  
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
