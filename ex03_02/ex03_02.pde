size(300,200);
float a,b,c,d,e,f;
float r=50;
for (a=0; a<=4; a+=1) {
  b=a+1;
  c=150+r*cos(3*PI/10+(2*PI/5)*a);
  d=100+r*sin(3*PI/10+(2*PI/5)*a);
  e=150+r*cos(3*PI/10+(2*PI/5)*b);
  f=100+r*sin(3*PI/10+(2*PI/5)*b);
  line (c,d,e,f);
}
