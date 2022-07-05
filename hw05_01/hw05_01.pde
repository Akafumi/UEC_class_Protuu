size(500, 500);
background(255, 255, 255);

int d = 20;
int x = d / 2, y = d / 2;
while(y + d / 2 <= height){
  x = d / 2;
  while(x + d / 2 <= width){
    fill(0,width-x,height-y);
    ellipse(x, y, d, d);
    x += d;
  }
  y += d;
}
