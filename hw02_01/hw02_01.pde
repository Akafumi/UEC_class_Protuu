size (300,180);
background (255);

noStroke ();
fill (210,16,52);
rect(120, 0, 180, 180);
float a,b,c;
for (a=0; a<=144; a+=36) {
  fill (210,16,52);
  b=a+18;
  c=a+36;
  triangle(75, a, 120, a, 120, b);
  triangle(75, c, 120, c, 120, b);
}
