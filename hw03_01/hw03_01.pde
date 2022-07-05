size(270, 180);
background(226, 28, 28);

float a,b,c,d,e,f;
float R=54;
for (float t=3*PI/10; t<=2*PI; t+=2*PI/5) {
  a=135+R*cos(t);
  b=90+R*sin(t);
  c=135+R*cos(t+4*PI/5);
  d=90+R*sin(t+4*PI/5);
  e=135;
  f=90;
  noStroke();
  fill(255,255,0);
  triangle(a, b, c, d, e, f);
}
