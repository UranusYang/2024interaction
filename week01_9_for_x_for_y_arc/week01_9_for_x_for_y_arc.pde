// week01_9_for_x_for_y_arc
size(400,400);
fill(#74AFFF); //填充藍色
for(int x=0; x<400; x+=100){
  for(int y=0; y<400; y+=100){
    arc(x+50, y+50, 100, 100, 1, PI*2-1, PIE); //改畫弧度
    //X座標，Y，寬，高，開始，結束，蘋果派的畫法
  }
}
