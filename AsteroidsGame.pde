Spaceship ship = new Spaceship();
ArrayList <Asteroid> ast = new ArrayList <Asteroid>();
Star[] star = new Star[500];
public void setup() {
  size(500, 500);
  for (int i = 0; i<star.length; i++) {
    star[i] = new Star();
  }
  for (int i = 0; i<25; i++) {
    ast.add(new Asteroid());
  }
}

public void draw() {
  background(0);
  for (int i = 0; i<star.length; i++) {
    star[i].show();
  }
  for (int i = 0; i<ast.size(); i++) {
    ast.get(i).show();
    ast.get(i).move();
    float d = dist((float)ship.getCenterX(), (float)ship.getCenterY(),
    (float)ast.get(i).getCenterX(), (float)ast.get(i).getCenterY());
    if(d < 20){
      ast.remove(i);
    }
  }

  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == LEFT) {
        ship.turn(-5);
      }
      if (keyCode == RIGHT) {
        ship.turn(5);
      }
      if (keyCode == UP) {
        ship.accelerate(0.2);
      }
    }
  }
  ship.move();
  ship.show();
}

public void keyReleased() {
  if (key == ENTER) {
    ship.setXspeed(0);
    ship.setYspeed(0);
    ship.setCenterX((int)(Math.random()*500));
    ship.setCenterY((int)(Math.random()*500));
    ship.setDirection((int)(Math.random()*360));
  }
}
