void setup() {
  size(800, 800);
  background(255);
  circle(400,400,100);
  fiveStar(50,400,400);
}

void fiveStar(int r, int x, int y) {
  for (float t=3*PI/10; t<=2*PI; t+=2*PI/5) {
    float a=x+r*cos(t);
    float b=y+r*sin(t);
    float c=x+r*cos(t+4*PI/5);
    float d=y+r*sin(t+4*PI/5);
    noStroke();
    fill(255,255,0);
    triangle(a, b, c, d, x, y);
  }
}
