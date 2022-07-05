void setup() {
  size(20, 400);
  smooth();
  noStroke();
  fill(200, 255, 200);
  ellipseMode(CORNER);
  frameRate(30);
}

int d=20,y=0,vy=1;
void draw() {
  background(255);
  ellipse(0, y, d, d);
  y+=vy;
  if(y>height) exit();
}

