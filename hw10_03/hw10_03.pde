int ballNum = 100;
Ball[] ball;

void setup() {
  size (600,400);
  fill(255, 0, 0);  
  ball = new Ball[ballNum];
  for (int i=0; i<ballNum; i++) {
    int d = int(random(10, 50));
    int x = int(random(d,width-d));
    int y = int(random(d,height-d));

    int r = int(random(0,255)); 
    int g = int(random(0,255)); 
    int b = int(random(0,255)); 

    // 初めから静止しているボールが現れないようにする
    // vx=0，若しくは vy=0 になったとき，正の値で取り直すようにする
    int vx = int(random(-5,5));
    if (vx == 0) {
      vx = int(random(10,15));
    } 
    int vy = int(random(-5,5));
    if (vy == 0) {
      vy = int(random(10,15));
    }

    // (vx,vy)=(0,0) の時，再度乱数をとろうかと思ったが単調になるので廃止．
    // if (vx*vy == 0) {
    //   vx = int(random(10,15));
    //   vy = int(random(10,15));
    // }


    ball[i] = new Ball(d,x,y,vx,vy,r,g,b);
  }
}

void draw() {
  background(255);

  for (int i=0; i<100; i++) {
    ball[i].move();
    ball[i].draw();
  }
}

class Ball{
  int d;
  int x;
  int y;
  int vx;
  int vy;
  int r,g,b;

  Ball (int ball_d, int ball_x, int ball_y, int ball_vx, int ball_vy, int ball_r, int ball_g, int ball_b) {
    d = ball_d;
    x = ball_x;
    y = ball_y;
    vx = ball_vx;
    vy = ball_vy;
    r = ball_r;
    g = ball_g;
    b = ball_b;
  }

  void draw() {
    fill(r,g,b);
    ellipse(x,y,d,d);
  }

  void move() {
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
