// week08_4_RPG_2d_array_floor_map
int [][] floor = {
  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}, //有20個數字
  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}, //有20個數字
  {1,1,1,1,1,1,1,19,3,22,3,22,9,2,2,2,9,1,16,5}, //有20個數字
  {1,1,1,1,1,1,1,2,3,18,3,9,9,9,2,2,2,9,1,5},
  {1,1,1,1,1,1,1,2,3,2,3,9,9,9,2,2,2,9,1,5},
  {1,1,1,1,1,1,1,2,3,7,8,9,10,9,2,2,2,9,1,5},
  {1,1,1,1,1,1,1,2,3,18,3,11,10,9,2,2,2,9,1,5},
  {1,1,1,1,1,1,1,2,3,18,3,9,7,9,2,2,2,9,1,5},
  {1,1,1,1,1,1,1,2,3,18,3,9,5,9,6,2,2,9,1,5},
  {1,1,1,1,1,1,1,2,3,18,3,9,8,10,2,2,2,9,1,5},
  {1,1,1,1,1,1,1,2,3,7,8,9,10,9,2,2,2,9,1,5},
  {1,1,1,1,1,1,1,2,3,18,3,11,10,9,2,2,2,9,1,5},
  {1,1,1,1,1,1,1,2,3,2,3,9,9,9,2,2,2,9,1,5},
  {1,1,1,1,1,1,1,2,3,18,3,11,10,9,2,2,2,9,1,5},
  {1,1,1,1,1,1,1,2,3,18,3,11,10,9,2,2,2,9,1,5},
};
PImage img;
PImage [] fimg = new PImage[40];
void setup(){
  size(640,480); //15格=480，480/15=32小圖
  img = loadImage("640x480.png");
  for(int i=1; i<=22; i++){
    fimg[i] = loadImage(i+".png");
  }
}
void draw(){
  //background(img);
  for(int i=0; i<floor.length; i++){ //高度 480
    for(int j=0; j<20; j++){ //寬度 640
      int now = floor[i][j];
      image(fimg[now], j*32, i*32);
    }
  }
}
