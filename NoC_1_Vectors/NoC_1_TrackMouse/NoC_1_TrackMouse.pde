Mover[] movers = new Mover[10];


void setup() {
  size(640, 320);

  for (int i=0; i<10; i++) {
    movers[i] = new Mover();
  }
}

void draw() {
  background(255);
  for (int i = 0; i < movers.length; i++) {

    movers[i].update();
    movers[i].checkEdges();
    movers[i].display();
  }
}
