Spaceship ship = new Spaceship();
ArrayList <Asteroid> ast = new ArrayList <Asteroid>();
ArrayList <Bullet> pew = new ArrayList <Bullet>();
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
  for (int i = 0; i<pew.size(); i++) {
    pew.get(i).show();
    pew.get(i).move();
    if((pew.get(i).getCenterX() == 0 || pew.get(i).getCenterX() == 500)||
    (pew.get(i).getCenterY() == 0 || pew.get(i).getCenterY() == 500)){
      pew.remove(i);
    }
  }
  for (int i = 0; i<ast.size(); i++) {
    ast.get(i).show();
    ast.get(i).move();
    float d = dist((float)ship.getCenterX(), (float)ship.getCenterY(),
      (float)ast.get(i).getCenterX(), (float)ast.get(i).getCenterY());
    if (d < 20) {
      ast.remove(i);
    }
  }
  for(int i = 0; i<pew.size(); i++){
    for (int a = 0; a<ast.size(); a++) {
      float b = dist((float)pew.get(i).getCenterX(), (float)pew.get(i).getCenterY(),
        (float)ast.get(a).getCenterX(), (float)ast.get(a).getCenterY());
       if(b<13){
         ast.remove(a);
         pew.remove(i);
         break;
       }
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
        ship.accelerate(0.05);
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
  if (key == CODED) {
    if (keyCode == SHIFT) {
      if(ast.size()>0){
        ast.add(ast.size()-1, new Asteroid());
        ast.get(ast.size()-1).show();
        ast.get(ast.size()-1).move();
      }
      else{
        ast.add(ast.size(), new Asteroid());
        ast.get(ast.size()-1).show();
        ast.get(ast.size()-1).move();
      }
    }
  }
  if (key == ' ') {
    pew.add(new Bullet(ship));
  }
}
