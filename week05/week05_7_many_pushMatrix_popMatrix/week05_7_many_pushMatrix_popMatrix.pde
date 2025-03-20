//week05-7-many-pushMatrix-popMatrix
void setup(){
  size(500,500);
}
void draw(){
  background(204);
  for(int x = 50;x<500;x+=100){  //每個距離100
    for(int y = 50; y<500;y+=100){  //每個距離100
      pushMatrix();//今天的主角(在圖學裡,會往右縮排)
      translate(x,y);//移到相應的xy座標
      rotate(radians(frameCount));//長100的棒子
      rect(-50,-5,100,10);
      popMatrix();//今天的主角
    }
  }
}
  
