Spaceship ship = new Spaceship();
Star[] star = new Star[500];
public void setup() {
  size(500, 500);
  for(int i = 0; i<star.length; i++){
    star[i] = new Star();
  }
}
