//week06-3-push-traslate-rotate-translate-box-pop
void setup(){
  size(500,500,P3D);
}
void draw(){
 background(142);
 ellipse(width/2,height/2,200,200);
 translate(width/2,height/2);//把東西,放到畫面中心
 pushMatrix();//第5周教的Matrix保護
   if(mousePressed && mouseButton==RIGHT){ 
     rotateZ(radians(frameCount));//對著下面中心旋轉
   }
   translate(-50,0,0);//把棒子左移
   box(100,30,30);//橫的棒子
 popMatrix();//第5周教的Matrix保護
}
float x = 0, y = 0;
void mouseDragged(){
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
}
