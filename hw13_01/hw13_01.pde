String s = new String("Welcome to Programming and Exercises Class!!");
void setup(){
  size(600, 500);
  textFont(createFont("Harrington", 24));
}

int c=0;
int y;

void draw(){
  background(255);
  fill(0);
  text(s, (width - textWidth(s)) / 2, y++);
  if(y > height) {
    y = 0;
  }
}

