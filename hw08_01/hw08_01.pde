float x = 200; 
float y = 150; 
float vx = random(-50, 50); 
float vy = random(-50, 50);; 
int d = 20;

void setup(){
  size(600, 400); 
  fill(255,0,0);
}

void draw(){
  fill(255,0,0);
  background(255); 
  text("x="+x,width-80,10);
  text("y="+y,width-80,20);
  ellipse(x, y, d, d);
  x = x + vx; 
  y = y + vy; 
  if(x < d || x > width - d ){
    vx =- vx;
  }
  if(y < d || y > height - d){
    vy =- vy;
  }
}
