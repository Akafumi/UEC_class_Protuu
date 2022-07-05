int ballNum = 5;
int PentagonNum = 5;
Ball[] ball;
Pentagon[] Pentagon;

void setup() {
  size (600,400);
  fill(255, 0, 0);  
  // ball = new Ball[ballNum];
  Pentagon = new Pentagon[PentagonNum];
  for (int i=0; i<PentagonNum; i++) {
    int d = int(random(10, 50));
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

    // ball[i] = new Ball(d,x,y,vx,vy,r,g,b);
    Pentagon[i] = new Pentagon(d,x,y,vx,vy,r,g,b);
  }
}

void draw() {
  background(255);

  for (int i=0; i<PentagonNum; i++) {
    Pentagon[i].draw();
    Pentagon[i].move();
    // ball[i].draw();
    // ball[i].move();
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
    // d = ball_d;
    // x = ball_x;
    // y = ball_y;
    // vx = ball_vx;
    // vy = ball_vy;
    // r = ball_r;
    // g = ball_g;
    // b = ball_b;

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

  public void draw() {
    fill(r,g,b);
    ellipse(x,y,d,d);
  }

  public void set_color(int r, int g, int b) {
    this.r = r;
    this.g = g;
    this.b = b;
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

class Pentagon extends Ball {
  // int d;
  // float x;
  // float y;
  // int vx;
  // int vy;
  // int r,g,b;

  Pentagon (){};
  Pentagon (int Pentagon_d, float Pentagon_x, float Pentagon_y, int Pentagon_vx, int Pentagon_vy, int Pentagon_r, int Pentagon_g, int Pentagon_b) {
    // d = Pentagon_d;
    // x = Pentagon_x;
    // y = Pentagon_y;
    // vx = Pentagon_vx;
    // vy = Pentagon_vy;
    // r = Pentagon_r;
    // g = Pentagon_g;
    // b = Pentagon_b;

    set_size(Pentagon_d);
    set_position(Pentagon_x, Pentagon_y);
    set_speed(Pentagon_vx, Pentagon_vy);
    set_color(Pentagon_r, Pentagon_g, Pentagon_b);
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
