void setup() {
  size(300, 300);
  background(255);
  circle(150,150,140);
  fiveStar(70,150,150);
}

void fiveStar(int r, int x, int y) {
    for (float t=PI/10; t<=2*PI; t+=2*PI/5) {
      float a=x+r*cos(t);
      float b=y+r*sin(t);
      float c=x+r*cos(t+4*PI/5);
      float d=y+r*sin(t+4*PI/5);
      noStroke();
      fill(255,255,0);
      triangle(a, b, c, d, x, y);
    }
}

