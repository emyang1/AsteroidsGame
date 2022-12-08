
class Bullet extends Floater{
  Bullet(Spaceship ship){
    myColor = 255;
    myCenterX = ship.getCenterX();
    myCenterY = ship.getCenterY();
    myXspeed = ship.getXspeed();
    myYspeed = ship.getYspeed();
    myPointDirection = ship.getPointDirection();
    accelerate(2);
  }
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public double getCenterX(){return myCenterX;}
  public double getCenterY(){return myCenterY;}
}
