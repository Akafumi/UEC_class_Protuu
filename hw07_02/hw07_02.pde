void setup(){
    background(255);
    size(800,400);
}

float k=3*PI/10;
float r=90;
float x=-r;
// float xc=400; // asobi
float yc=200;
float y=yc;

void draw(){
  background(255);
  fill(0);
  text("x="+x,width-80,10);
  text("y="+y,width-80,20);
  fiveStar(r,x,y,k);
  k = k + PI/30;
  x = x + 2.5;
  // x = xc+r*cos(k); // asobi
  // y = yc+r*sin(k); // asobi
  if(x>width+r) exit();
}

void fiveStar(float r, float x, float y, float k) {
  for (float t=3*PI/10+k; t<=60*PI; t+=2*PI/5) {
    float a=x+r*cos(t);
    float b=y+r*sin(t);
    float c=x+r*cos(t+4*PI/5);
    float d=y+r*sin(t+4*PI/5);
    noStroke();
    fill(255,255,0);
    triangle(a, b, c, d, x, y);
  }
}
