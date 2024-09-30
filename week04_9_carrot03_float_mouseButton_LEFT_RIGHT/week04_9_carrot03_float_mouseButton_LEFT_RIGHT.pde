// week04_9_carrot03_float_mouseButton_LEFT_RIGHT
void setup(){
  size(600,500);
  background(0); //黑畫1次
  stroke(255);
  fill(0);
}
void draw(){
  //ellipse(mouseX,mouseY,100,100);
}
float s=25;
void mousePressed(){
  ellipse(mouseX,mouseY,s,s);
  if(mouseButton==LEFT) s*=1.1; //滑鼠左鍵
  if(mouseButton==RIGHT) s*=0.9; //滑鼠右鍵
}
