// week15_4_circle_collision_cos_sin_vector_N_N2_M_M2_swap
void setup(){
  size(640,360);
}
Ball ball = new Ball(100, 200, 60);
Ball ball2 = new Ball(300, 200, 60);//加這行
void draw(){
  background(51);
  if(ball.checkCollision(ball2)) fill(#FFAAAA);
  else fill(255);
  ball.update();
  ball.display();
  ball2.update();//加這行
  ball2.display();//加這行
}
//把class Ball 移到右邊的新分頁(名字也叫Ball)
