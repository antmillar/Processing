import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;  
ArrayList<Box> boxes;
Boundary boundary;

void setup() {
  size(640, 640);
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  boxes = new ArrayList<Box>();
  boundary = new Boundary(width/2, height, width, 20); //specify centerpoint and dimensions.
}

void draw() {
  background(255);
  box2d.step();
  if (mousePressed) {
    boxes.add(new Box());
  }

  for (Box b : boxes) {
    b.display();
  }
}
