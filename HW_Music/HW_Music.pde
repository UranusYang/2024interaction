// HW-Music
//int []vX={}
//int []vY={}
PImage img;
void setup(){
  size(640,480);
}
float mX = 320, mY = 0, mVX = 0, mVY = 3;
int page = 0; //0：開場畫面 1：第一關 2：第二關
void draw(){
  if(page==0){
    background(255);
    textSize(70);
    textAlign(CENTER,CENTER);
    fill(0,255,0);
    text("Start",320,240);
  }
  else if(page==1){
    background(0);
    textSize(70);
    strokeWeight(4);
    stroke(255);
    line(0, 380, 640, 380);
    fill(255,0,0);
    ellipse(mX, mY, 80, 80);
    mX += mVX;
    mY += mVY;
  }
}
void mousePressed(){
  if(page==0) page=1;
}


void keyPressed(){
  if(keyCode==RIGHT) ;
  if(keyCode==DOWN) ;
  if(keyCode==LEFT) ;
  if(keyCode==UP) ;
  
}
