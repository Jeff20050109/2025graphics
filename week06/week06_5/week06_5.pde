//week06-5-sphere
void setup(){
  size(500,400,P3D);
}
void draw(){
  background(255);//step00
  translate(width/2,height/2);//step00
  sphere(10);//step04 放個圓球,當世界中心參考
  
  
  fill(252,131,77);
  pushMatrix();//step03
    translate(x,y);
    //if(mousePressed)
    box(200,50,25);//手肘
    pushMatrix();
      translate(100,0);
      rotateZ(radians(frameCount));//step03
      translate(25,0,0);//step02 往右推,讓左端放中心
      box(50,25,50);//step01 小手腕
     popMatrix();
  popMatrix();//step03
}
float x = 0, y = 0;
void mouseDragged(){
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
  println("x:"+x+"y:"+y);
}
