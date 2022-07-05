size(600, 180);

int X,Y;
X=0;
Y=90;

float a,b,c,d,e,f;
int R=50;
int i;
for (i=0; i<=4; i+=1) {
  stroke(0, 0, 0);
  noFill();
  X=X+100;
  circle(X,Y,100);
  for (float t=3*PI/10; t<=2*PI; t+=2*PI/5) {
    a=X+R*cos(t);
    b=Y+R*sin(t);
    c=X+R*cos(t+4*PI/5);
    d=Y+R*sin(t+4*PI/5);
    e=X;
    f=Y;
    noStroke();
    fill(255,255,0);
    triangle(a, b, c, d, e, f);
  }
}
