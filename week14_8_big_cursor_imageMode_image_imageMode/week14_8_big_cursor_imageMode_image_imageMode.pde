// week14_8_big_cursor_imageMode_image_imageMode
// 希望不只用 16*16 或 32*32 要更大
PImage img,imgbig1,imgbig2;
void setup(){
  size(500,500);
  imgbig1 = loadImage("淨漢 (1).png");
  imgbig2 = loadImage("圓佑.png");
  img = imgbig2;
}
void draw(){
  background(#FFFFF2);
  imageMode(CENTER); //畫圖的系統，改成以正中心的座標
  image(img,mouseX,mouseY);
  imageMode(CORNER); //畫圖的系統，改成左上角的座標
  if(frameCount%120==0) img = imgbig1;
  if(frameCount%120==60) img = imgbig2;
}
