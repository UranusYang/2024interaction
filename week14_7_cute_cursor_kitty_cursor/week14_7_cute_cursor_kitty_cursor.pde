// week14_7_cute_cursor_kitty_cursor
PImage img,img2;
void setup(){
  size(500,500);
  img = loadImage("淨漢.png");
  img2 = loadImage("哩兜.png");
  cursor(img2);
}
void draw(){
  background(#FFFFF2);
  if(frameCount%120==0) cursor(img);
  if(frameCount%120==60) cursor(img2);
}
