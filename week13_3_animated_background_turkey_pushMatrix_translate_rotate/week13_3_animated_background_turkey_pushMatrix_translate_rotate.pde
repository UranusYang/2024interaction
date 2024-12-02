// week13_3_animated_background_turkey_pushMatrix_translate_rotate
PImage img;
void setup(){
  size(500,300);
  img = loadImage("among_us.png");
  imageMode(CENTER);
}
void among(int x, int y){
  pushMatrix();
    translate(x, y);
    rotate(radians(frameCount));
    image(img, 0, 0, 128, 67);
  popMatrix();
}
void draw(){
  background(0);
  among(mouseX, mouseY); //會跟著mouse移動
  among(100,100); //左上角
  among(400,100); //右上角
  among(100,200); //左下角
  among(400,200); //右下角
}
