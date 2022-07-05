void setup() {
  size(100, 100);
  background(255);
  circle(50,50,100);
  noStroke();
  nStar(20);
}

void nStar(int n) {
  int R=50;
  int r=30;
  int x=50;
  int y=50;
  for (float t=0; t<=2*PI; t+=2*PI/n) {
    float a=x+R*cos(t);
    float b=y+R*sin(t);
    float c=x+r*cos(t+PI/n);
    float d=y+r*sin(t+PI/n);
    float e=x+R*cos(t+2*PI/n);
    float f=y+R*sin(t+2*PI/n);
    fill(255,255,0);
    triangle(a,b,c,d,x,y);
    triangle(c,d,e,f,x,y);
  }
}


