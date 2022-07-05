size (360,240);
background (255);

noStroke ();
fill (0,51,160);
rect (0,0,120,120);
stroke (0,0,0);
circle (60,60,60);
float x,y,X,Y;
float R = 30;
for (float a = PI/10; a < 21*PI/10; a+=2*PI/5) {
  x=60+R*cos(a);
  y=60+R*sin(a);
  X=60+R*cos(a+4*PI/5);
  Y=60+R*sin(a+4*PI/5);
  line(x, y, X, Y);
}

fill (200,16,64);
rect (0,120,360,120);
