//week06-6-sphere
void setup(){
  size(500,400,P3D);
}
void draw(){
  background(255);//step00
  translate(width/2,height/2);//step00
  sphere(10);//step04 放個圓球,當世界中心參考
  
  
  fill(252,131,77);
  pushMatrix();//step03
    //if(mousePressed)
    box(50,200,25);//手肘
    pushMatrix();
      translate(x,y);
      if(mousePressed) rotateZ(radians(frameCount));
      translate(100,0);
      box(200,50,25);//step01 小手腕
      pushMatrix();
      translate(100,0);
      rotateZ(radians(frameCount));
      translate(25,0,0);
      box(50,20,50);
      popMatrix();
     popMatrix();
  popMatrix();//step03
}
float x = 0, y = 0;
void mouseDragged(){
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
  println("x:"+x+"y:"+y);
}
