size(270, 180);

float X,Y;
X=270;
Y=180;

background(226, 28, 28);

float a,b,c,d,e,f;
float R=54;
for (float t=3*PI/10; t<=2*PI; t+=2*PI/5) {
  a=X/2+R*cos(t);
  b=Y/2+R*sin(t);
  c=X/2+R*cos(t+4*PI/5);
  d=Y/2+R*sin(t+4*PI/5);
  e=X/2;
  f=Y/2;
  noStroke();
  fill(255,255,0);
  triangle(a, b, c, d, e, f);
}
