// オブジェクト宣言
Ball b1;

void setup() {
  size(400, 60);

  // オブジェクト定義
  b1 = new Ball(30,30,60,3,255);
}

void draw() {
  background(255);

  // オブジェクトb1を使う
  b1.move();
  b1.draw();
}

// クラスの定義
class Ball{
  // 使う変数の定義
  int x;
  int y;
  int d;
  float vx;
  int c;

  // Ballクラスのコントラスタ
  Ball (int ball_x, int ball_y, int ball_d, float ball_vx, int ball_c){
    x = ball_x;
    y = ball_y;
    d = ball_d;
    vx = ball_vx;
    c = ball_c;
  }

  // ボールの表示するメソッド
  void draw() {
    fill(c, 0, 0);
    ellipse(x,y,d,d);
  }

  // ボールを動かすメソッド
  void move() {
    x += vx;
    if(x > width - d/2 || x < d/2) {
      vx *= -1;
    }
  }
}

