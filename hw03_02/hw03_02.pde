size(270, 180);

float a,b,c,d,e,f;
float R=50;
float r=40;

for (float t=PI/6; t<=2*PI; t+=2*PI/3) {
  a=135+R*cos(t);
  b=90+R*sin(t);
  c=135+r*cos(t+PI/3);
  d=90+r*sin(t+PI/3);
  e=135+R*cos(t+2*PI/3);
  f=90+R*sin(t+2*PI/3);
  triangle(a, b, c, d, 135, 90);
  triangle(e, f, c, d, 135, 90);
}
