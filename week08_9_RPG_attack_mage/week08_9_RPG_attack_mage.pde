// week08_9_RPG_attack_amge
int [][] floor = {
  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}, //有20個數字
  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}, //有20個數字
  {1,1,1,1,1,1,4,4,4,4,4,4,4,4,4,4,4,4,1,1}, //有20個數字
  {1,1,1,1,1,1,4,20,3,18,3,9,9,9,11,10,8,4,1,1},
  {1,1,1,1,1,1,4,11,15,2,3,9,9,9,13,12,7,4,1,1},
  {1,1,1,1,1,1,4,10,3,7,8,7,10,9,6,10,8,4,1,1},
  {1,1,1,1,1,1,4,13,6,20,3,11,10,9,11,7,6,4,1,1},
  {1,1,1,1,1,1,4,21,6,18,3,9,7,9,12,20,8,4,1,1},
  {1,1,1,1,1,1,4,22,7,3,3,9,11,9,6,13,22,4,1,1},
  {1,1,1,1,1,1,4,9,11,10,3,9,8,10,22,16,17,4,1,1},
  {1,1,1,1,1,1,4,12,10,7,8,9,10,9,21,17,22,4,1,1},
  {1,1,1,1,1,1,4,14,20,17,3,11,10,9,13,16,16,4,1,1},
  {1,1,1,1,1,1,4,4,4,4,4,4,4,4,4,4,4,4,1,1},
  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
};
PImage img,user;
PImage [] fimg = new PImage[40];
void setup(){
  size(640,480); //15格=480，480/15=32小圖
  img = loadImage("640x480.png");
  user = loadImage("5.png"); //勇者/使用者
  for(int i=1; i<=22; i++){
    fimg[i] = loadImage(i+".png");
  }
}
int userI = 11, userJ = 15;
void draw(){
  //background(img);
  for(int i=0; i<floor.length; i++){ //高度 480
    for(int j=0; j<20; j++){ //寬度 640
      int now = floor[i][j];
      image(fimg[now], j*32, i*32);
    }
  }
  image(user, 16, 16);
  textSize(30);
  text("Level: " + level, 16, 90);
  textSize(20);
  text("Hp: " + hp, 16, 140);
  text("Attack: " + attack, 16, 170);
  text("Defense: " + defense, 16, 200);
  text("Magic: " + magic, 16, 230);
  text("Exp: " + exp, 16, 260);
  text("Coins: " + coin, 16, 290);
  image(user, userJ*32, userI*32);
  if(gameOver==1) background(0, 255, 0); //綠色通關
  if(gameOver==2) background(255, 0, 0); //紅色死掉
}
int level = 1, hp = 2693, attack = 14, defense = 16, magic = 10, exp = 72, coin = 72;
int gameOver = 0;
void keyPressed(){
  int newI = userI, newJ = userJ; //新的可能的位置
  if(keyCode==RIGHT) newJ++;
  if(keyCode==LEFT) newJ--;
  if(keyCode==UP) newI--;
  if(keyCode==DOWN) newI++;
  if(floor[newI][newJ]==11){ //遇到魔法師
    if(hp-10<=0) gameOver = 2;
    else{
      hp -= 10; //扣你的血
      coin += 10; //加錢
      exp += 1; //加經驗值
      userI = newI;
      userJ = newJ;
      floor[userI][userJ] = 2;
    }
  }
  else if(floor[newI][newJ]!=1 && floor[newI][newJ]!=3 && floor[newI][newJ]!=4 && floor[newI][newJ]!=9){ //不是石頭牆，也不是木頭牆，才能走過去
    userI = newI;
    userJ = newJ;
    if(floor[userI][userJ]==14) gameOver = 1; //走到樓上，結束囉
    floor[userI][userJ] = 19;
  }
}
