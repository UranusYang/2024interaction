// week02_5_pacman_if_keyPressed_keyCode
void setup(){
  size(400,400);
  frameRate(200); //加快速度
}
int x=200, y=200; //pacman座標
void draw(){
  background(255);
  fill(#7D67AD);
  if(keyPressed && keyCode==RIGHT) x++;
  if(keyPressed && keyCode==LEFT) x--;
  if(keyPressed && keyCode==UP) y--;
  if(keyPressed && keyCode==DOWN) y++;
  ellipse(x,y,100,100);
}
