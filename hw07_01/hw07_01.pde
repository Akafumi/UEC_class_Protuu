void setup(){
    background(255);
    size(800,400);
}

float k=3*PI/10;

void draw(){
  background(255);
  fiveStar(180,400,200,k);
  k = k + PI/30;
  if(k>50*PI) exit();
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
