int r = 80;
float p = 0;
float t = 0.05;
void setup(){
size(400, 400);
}

int x=400;

void draw(){
  background(0,0,0);
  Packman(x);
  x=x-1;
  if (x<-r) exit();
}

void Packman(int x) {
  fill(255, 255, 0);
  noStroke();
  p += t;
  if (p > PI/6 || p < 0) {
    t = t * -1;
  }
  arc(x, 200, r, r, -5*(PI/6)-p, +p+PI*5/6);
}
