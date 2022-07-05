size(216, 144);
background(255);

noStroke();
fill(239, 51, 64);
rect(0, 0, 216, 72);
fill(255);
circle(45.5,36,53);
fill(239, 51, 64);
circle(60,36,58);

fill(255);
float a,b,c,d,e,f,g,h,i,j,k,l,m,n;
float R=15.2;
float r=6.4;
for (float t=3*PI/10; t<=2*PI; t+=2*PI/5) {
  a=60+R*cos(t);
  b=36+R*sin(t);
  c=a+r*cos(t);
  d=b+r*sin(t);
  e=a+r*cos(t+4*PI/5);
  f=b+r*sin(t+4*PI/5);
  g=a+r*cos(t+8*PI/5);
  h=b+r*sin(t+8*PI/5);
  i=a+r*cos(t+12*PI/5);
  j=b+r*sin(t+12*PI/5);
  k=a+r*cos(t+16*PI/5);
  l=b+r*sin(t+16*PI/5);
  m=a+r*cos(t+20*PI/5);
  n=b+r*sin(t+20*PI/5);
  // stroke(0,0,0);
  // line(a, b, 60, 36);
  noStroke();
  fill(255);
  triangle(a, b, c, d, e, f);
  triangle(a, b, e, f, g, h);
  triangle(a, b, g, h, i, j);
  triangle(a, b, i, j, k, l);
  triangle(a, b, k, l, m, n);
}
