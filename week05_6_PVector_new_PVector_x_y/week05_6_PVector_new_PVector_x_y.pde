// week05_6_PVector_new_PVector_x_y
void setup(){
  size(400,600);
  c= new PVector(200,100); //new 出新物件
  p= new PVector(300,230); //new 出新物件
}
PVector c, p; //PVector 物件導向
void draw(){
  background(0);
  ellipse(c.x, c.y, 10, 10); //使用物件的 c.x
  ellipse(p.x, p.y, 10, 10);
}
