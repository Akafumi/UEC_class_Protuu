int Num = 100;
Ball[] Ball;
Star[] Star;

void setup() {
  size(1200, 800);
  fill(255, 0, 0);  
  Star = new Star[Num];
  for (int i=0; i<Num; i+=1) {
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

    float r_v = random(PI/60, PI/3);

    Star[i] = new Star(d,x,y,vx,vy,r,g,b,r_v);
  }
}

void draw() {
  background(0);

  for (int i=0; i<Num; i+=1) {
    Star[i].draw();
    Star[i].move();
    Star[i].rotation();
  }
}

class Ball{
  int d;
  float x;
  float y;
  int vx;
  int vy;
  int r,g,b;

  Ball (){};
  Ball (int ball_d, float ball_x, float ball_y, int ball_vx, int ball_vy, int ball_r, int ball_g, int ball_b) {
    set_size(ball_d);
    set_position(ball_x, ball_y);
    set_speed(ball_vx, ball_vy);
    set_color(ball_r, ball_g, ball_b);
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
    ellipse(x,y,d,d);
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

class Star extends Ball{
  float t_0 = 3*PI/10;  
  float r_v;

  Star (int Star_d, float Star_x, float Star_y, int Star_vx, int Star_vy, int Star_r, int Star_g, int Star_b, float Star_r_v) {
    set_size(Star_d);
    set_position(Star_x, Star_y);
    set_speed(Star_vx, Star_vy);
    set_color(Star_r, Star_g, Star_b);

    set_rotation(Star_r_v);
  }

  public void set_rotation(float r_v) { 
    this.r_v = r_v;
  }

  void draw() {
    fill(r,g,b);
    noStroke();
    float R = d;
    int r = 2*d/5;
    for (float t=t_0; t<=4*PI; t+=2*PI/5) {
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

  public void rotation() {
    t_0 += r_v;

    if(t_0 > 2*PI) {
      t_0 = 0;
    }
  }

}
