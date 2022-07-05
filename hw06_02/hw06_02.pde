void setup() {
  size(190, 100);
  background(255);
  for (int i = 0; i < 13; i+=2) {
    fill(178,34,52);
    rect(0,100*i/13,190,100/13);
  }
  fill(60,59,110);
  rect(0,0,76,700/13);
  float x,y;
  for (int j=0; j<=5; j+=1) {
    fiveStar(3.08, 6.3+12.6*j,5.4+5.4*0);
    fiveStar(3.08, 6.3+12.6*j,5.4+5.4*2);
    fiveStar(3.08, 6.3+12.6*j,5.4+5.4*4);
    fiveStar(3.08, 6.3+12.6*j,5.4+5.4*6);
    fiveStar(3.08, 6.3+12.6*j,5.4+5.4*8);    
  }
  for (int k=0; k<=4; k+=1) {
    fiveStar(3.08, 12.6+12.6*k,5.4+5.4*1);
    fiveStar(3.08, 12.6+12.6*k,5.4+5.4*3);
    fiveStar(3.08, 12.6+12.6*k,5.4+5.4*5);
    fiveStar(3.08, 12.6+12.6*k,5.4+5.4*7);
  }
}

void fiveStar(float r, float x, float y) {
  for (float t=3*PI/10; t<=2*PI; t+=2*PI/5) {
    float a=x+r*cos(t);
    float b=y+r*sin(t);
    float c=x+r*cos(t+4*PI/5);
    float d=y+r*sin(t+4*PI/5);
    noStroke();
    fill(255,255,255);
    triangle(a, b, c, d, x, y);
  }
}

