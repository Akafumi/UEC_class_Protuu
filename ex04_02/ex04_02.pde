size (250,250);

float t;
float r=75;
float a,b,c,d;

circle(125,125,2*r);

for (t=PI/8; t<=2*PI; t+=PI/4) {
  a=125+r*cos(t);
  b=125+r*sin(t);
  c=125+r*cos(t+PI/4);
  d=125+r*sin(t+PI/4);
  line(a, b, c, d);
}
