int ballNum = 5;
float[] x, y, vx, vy, d;

void setup(){
	size(600, 400);
	fill(255, 0, 0);
	x = new float[ballNum]; // memory allocation
	y = new float[ballNum];
  vx = new float[ballNum];
	vy = new float[ballNum];
  d = new float[ballNum];
	for(int i = 0; i < ballNum; i++){
		x[i] = 50;
		y[i] = (i+1)*50;
    vx[i] = i+1;
		vy[i] = 0;
    d[i] = 10+10*i;
	}
}

void draw() {
  background(255);
  for (int i = 0; i < ballNum; ++i) {
    ellipse(x[i],y[i],d[i],d[i]);
    x[i]=x[i]+vx[i];
    y[i]=y[i]+vy[i];
    if(x[i] < d[i] || x[i] > width - d[i] ){
      vx[i] =- vx[i];
    }
    if(y[i] < d[i] || y[i] > height - d[i]){
      vy[i] =- vy[i];
    }
  }
}

