int Num = 16;
Pentagon[] Pentagon;
Star[] Star;

void setup() {
  size (600,400);
  fill(255, 0, 0);  
  Pentagon = new Pentagon[Num];
  Star = new Star[Num];
  for (int i=0; i<Num; i+=2) {
    int d = int(random(20, 60));
    float x = random(d,width-d);
    float y = random(d,height-d);

    int r = int(random(0,255)); 
    int g = int(random(0,255)); 
    int b = int(random(0,255)); 

    int vx = int(random(-5,5));
    if (vx == 0) {
      vx = int(random(10,15));
    } 
    int vy = int(random(-5,5));
    if (vy == 0) {
      vy = int(random(10,15));
    }

    Pentagon[i] = new Pentagon(d,x,y,vx,vy,r,g,b);
    Star[i] = new Star(d,x,y,vx,vy,r,g,b);
  }
  for (int j=1; j<Num; j+=2) {
    int d = int(random(10, 35));
    float x = random(d,width-d);
    float y = random(d,height-d);

    int r = int(random(0,255)); 
    int g = int(random(0,255)); 
    int b = int(random(0,255)); 

    int vx = int(random(-5,5));
    if (vx == 0) {
      vx = int(random(10,15));
    } 
    int vy = int(random(-5,5));
    if (vy == 0) {
      vy = int(random(10,15));
    }

    Pentagon[j] = new Pentagon(d,x,y,vx,vy,r,g,b);
    Star[j] = new Star(d,x,y,vx,vy,r,g,b);
  }
}

void draw() {
  background(0);

  int n = 5;
  for (int i=0; i<Num; i+=2) {
    Star[i].draw(n);
    Star[i].move();
    // Pentagon[i].draw();
    // Pentagon[i].move();
  }

  n = 15;
  for (int j=1; j<Num; j+=2) {
    Star[j].draw(n);
    Star[j].move();
    // Pentagon[j].draw();
    // Pentagon[j].move();
  }
}

class Pentagon {
  int d;
  float x;
  float y;
  int vx;
  int vy;
  int r,g,b;

  Pentagon (){};
  Pentagon (int Pentagon_d, float Pentagon_x, float Pentagon_y, int Pentagon_vx, int Pentagon_vy, int Pentagon_r, int Pentagon_g, int Pentagon_b) {
    set_size(Pentagon_d);
    set_position(Pentagon_x, Pentagon_y);
    set_speed(Pentagon_vx, Pentagon_vy);
    set_color(Pentagon_r, Pentagon_g, Pentagon_b);
  }

  public void set_size(int d) {
    this.d = d;
  }

  public void set_position(float x, float y) {
    this.x = x;
    this.y = y;
  }

  public void set_speed(int vx, int vy) {
    this.vx = vx;
    this.vy = vy;
  } 

  public void set_color(int r, int g, int b) {
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

  public void move() {
    x += vx;
    y += vy;
    
    if(x > width - d/2 || x < d/2) {
      vx *= -1;
    }
    if (y > height - d/2 || y < d/2) {
      vy *= -1;
    }
  }
  
}

class Star extends Pentagon{
Star (int Star_d, float Star_x, float Star_y, int Star_vx, int Star_vy, int Star_r, int Star_g, int Star_b) {
  set_size(Star_d);
  set_position(Star_x, Star_y);
  set_speed(Star_vx, Star_vy);
  set_color(Star_r, Star_g, Star_b);
}

void draw(int n) {
  fill(r,g,b);
  noStroke();
  float R = d;
  int r = 2*d/5;
  float t_0 = 4*PI/n - PI/2; 
  for (float t=t_0; t<=2*PI; t+=2*PI/n) {
    float a = x + R * cos(t);
    float b = y + R * sin(t);
    float c = x + r * cos(t+PI/n);
    float d = y + r * sin(t+PI/n);
    float e = x + R * cos(t+2*PI/n);
    float f = y + R * sin(t+2*PI/n);
    triangle(a,b,c,d,x,y);
    triangle(c,d,e,f,x,y);
  }}

}
