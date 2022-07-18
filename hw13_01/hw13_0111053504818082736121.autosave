String s = new String("Welcome to Programming and Exercises Class!!");
void setup(){
  size(600, 100);
  textFont(createFont("Harrington", 24));
  colorMode(HSB,360);
  frameRate(15);
}

int c=0;

void draw(){
  int offset = 0;
  for(int i = 0; i < s.length(); i+=1){
    fill(c, 200, 200); 
    text(s.charAt(i), (width - textWidth(s)) / 2 + offset, height / 2);
    offset += textWidth(s.charAt(i));
    c = c + 1;

    if(c > 360){
      c = 0;
    }
  }
}
