size(512, 512);
background(255, 255, 255);
colorMode(HSB, 100);

int R= 250;
float x,y;
int i=0;
for (float t = 0.0; t <= 2*PI; t+=PI/50) {
  x=256+R*cos(t);
  y=256+R*sin(t);
  stroke(i,100,100);
  line(256, 256, x, y);
  i=i+1;
} 

noStroke();
circle (256,256,200);
