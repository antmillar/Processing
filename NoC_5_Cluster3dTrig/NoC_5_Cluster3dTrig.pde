import peasy.*;

import toxi.physics3d.*;
import toxi.physics3d.behaviors.*;
import toxi.geom.*;

VerletPhysics3D physics;
VerletSpring3D spring;
PeasyCam cam;
Cluster cluster;
int clusterSize, clusterDia;

void setup() {
  size(1024, 768, P3D);
  stroke(255, 100);
  noFill();
  cam = new PeasyCam(this, 100);
  
  clusterSize = 50;
  clusterDia = 500;
  
  //Creating a toxiclibs Verlet physics world
  physics = new VerletPhysics3D();
  physics.setWorldBounds(new AABB(new Vec3D(), (new Vec3D(1024, 768, 500))));
  physics.addBehavior(new GravityBehavior3D(new Vec3D(0, 0.1, 0.0)));

  cluster = new Cluster(clusterSize, clusterDia, new Vec3D(0, 0, 0));
}

void draw() {
  background(50);

  box(600);

  //This is the same as Box2D’s “step()” function
  physics.update();
  cluster.display();

}
