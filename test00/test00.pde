Pentagon Pentagon;
Star Star;

void setup() {
  size (300,200);
  fill(255, 0, 0);  
  int d = int(random(20, 60));
  float x = width/2;
  float y = height/2;
  int r = 255; 
  int g = 0; 
  int b = 0;
  Pentagon = new Pentagon(d,x,y,r,g,b);
  Star = new Star(d,x,y,r,g,b);
}

void draw() {
  background(255);
  Star.draw();
}

class Pentagon {
  int d;
  float x;
  float y;
  int r,g,b;

  Pentagon (){};
  Pentagon (int Pd, float Px, float Py, int Pr, int Pg, int Pb) {
    setSize(Pd);
    setPosition(Px, Py);
    setColor(Pr, Pg, Pb);
  }

  public void setSize(int d) {
    this.d = d;
  }
  public void setPosition(float x, float y) {
    this.x = x;
    this.y = y;
  }
  public void setColor(int r, int g, int b) {
    this.r = r;
    this.g = g;
    this.b = b;
  }

  void draw() {
    fill(r,g,b);
    int n = 5;
    int R = d;
    for (int i=0; i<n; i+=1){
      float t = 3*PI/10 + 2*PI*i/n;
      float t_next = t + 2*PI/n;
      float x_1 = x + R * cos(t);
      float y_1 = y + R * sin(t);
      float x_2 = x + R * cos(t_next);
      float y_2 = y + R * sin(t_next);

      triangle(x, y, x_1, y_1, x_2, y_2);
    }
  }
}

class Star extends Pentagon{
Star (int Sd, float Sx, float Sy, int Sr, int Sg, int Sb) {
  setSize(Sd);
  setPosition(Sx, Sy);
  setColor(Sr, Sg, Sb);
}

void draw() {
  fill(r,g,b);
  noStroke();
  float R = d;
  int r = 2*d/5;
  float t_0 = 4*PI/5 - PI/2; 
  for (float t=t_0; t<=2*PI; t+=2*PI/5) {
    float a = x + R * cos(t);
    float b = y + R * sin(t);
    float c = x + r * cos(t+PI/5);
    float d = y + r * sin(t+PI/5);
    float e = x + R * cos(t+2*PI/5);
    float f = y + R * sin(t+2*PI/5);
    triangle(a,b,c,d,x,y);
    triangle(c,d,e,f,x,y);
  }
}

}
