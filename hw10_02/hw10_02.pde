int bar_width = 40;
int bar_height = 10;
int bar_x = 150;
int bar_y = 390;

float ball_d = 12; 
float ball_x = width/2; 
float ball_y = bar_y - ball_d/2;
float vx = random(-5,5); 
float vy = -random(3, 5);

boolean start = false;

void setup() {
  size(300, 400);
}

void draw(){
  background(255);

  fill(0,0,0);  
  rect(bar_x, bar_y, bar_width, bar_height);
  bar_x = mouseX - bar_width/2;
  
  if(bar_x > width - bar_width){
    bar_x = width - bar_width;
  }
  if(bar_x < 0){
    bar_x = 0;
  }
  
  fill(200, 0, 0);
  ellipse(ball_x, ball_y, ball_d, ball_d);

  if(start){
    ball_x += vx;
    ball_y += vy;
  }

  if(ball_x >= width - ball_d/2 || ball_x <= ball_d/2){
    vx *= -1;
  }
  if(ball_y <= ball_d/2){
    vy *= -2;
  }

  if(ball_y > height){
    exit();
  }

  if(ball_x >= bar_x && ball_x <= bar_x + bar_width){
    if(ball_y >= bar_y ){
      vx += random(1,3);
      vy *= -0.5;
    }
  }
}

void mousePressed(){
  start = !start;
}
