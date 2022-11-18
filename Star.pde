class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myColor;
  public Star(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color((int)(Math.random()*100)+100,(int)(Math.random()*100)+100,(int)(Math.random()*100)+100);
  }
  public void show(){
    noStroke();
    int x = (int)(Math.random()*4)+1;
    fill(myColor);
    ellipse(myX, myY, x, x);
  }
}


