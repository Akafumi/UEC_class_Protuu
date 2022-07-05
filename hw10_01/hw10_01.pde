int ballNum = 100;
float[] x, y, vx, vy, d;
int[] c1,c2,c3;

void setup(){
  size(600, 400);
  x = new float[ballNum]; // memory allocation
  y = new float[ballNum];
  vx = new float[ballNum];
  vy = new float[ballNum];
  d = new float[ballNum];
  c2 = new int [ballNum];
  c1 = new int [ballNum];
  c3 = new int [ballNum];
  for(int i = 0; i < ballNum; i++){
    x[i] = random(d[i]/2, width-d[i]/2);
    y[i] = random(d[i]/2, height-d[i]/2);
    vx[i] = random(-25, 25);
    vy[i] = random(-25, 25);
    d[i] = random(5, 25);
    c1[i] = int(random(0, 255));
    c2[i] = int(random(0, 255));
    c3[i] = int(random(0, 255));
  }
}

void draw() {
  background(255);
  for (int i = 0; i < ballNum; ++i) {
    fill(c1[i], c2[i], c3[i]);
    ellipse(x[i],y[i],d[i],d[i]);
    x[i]=x[i]+vx[i];
    y[i]=y[i]+vy[i];
    if(x[i] < d[i]/2 || x[i] > width - d[i]/2 ){
      vx[i] =- vx[i];
    }
    if(y[i] < d[i]/2 || y[i] > height - d[i]/2){
      vy[i] =- vy[i];
    }
  }
}
