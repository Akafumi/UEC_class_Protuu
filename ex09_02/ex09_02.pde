void setup(){
	size(640, 480);
	background(255);
	fill(255, 0, 0);
}

void draw(){
  int d=40;
  int w=90;
  int y=height-d/2;
  background(255);
  if (mouseX>width-w) {
    rect(width-w, y, w, d);    
  } else {
    rect(mouseX, y, w, d);    
  }
}

