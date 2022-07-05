size(300, 150);

// circle(150,75,100);
// circle(150,75,80);

float X,Y;
X=150;
Y=75;

float R,r;
R=50;
r=40;

float a,b,c,d,e,f;
float t;

for (t=0; t<=2*PI; t+=PI/3) {
  a=X+r*cos(t);
  b=Y+r*sin(t);
  c=X+R*cos(t+PI/6);
  d=Y+R*sin(t+PI/6);
  e=X+r*cos(t+PI/3);
  f=Y+r*sin(t+PI/3);
  line(a, b, c, d);
  line(c, d, e, f);
}
