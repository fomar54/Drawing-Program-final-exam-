//Global Variables
boolean draw=false;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight,drawingDiamter;
//
void setup(){
  //Mistaken display orientation should break app . feedback to console and CANVAS
  fullScreen();
//

population();
//
rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
//
};//end setup
//
 void draw(){
   //
   //drawing tools 
   if(draw==true&& (mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth &&mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ))line(mouseX,mouseY,pmouseX,pmouseY);
 if(draw==true&& (mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth &&mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight )) ellipse  (mouseX, mouseY,drawingDiamter,drawingDiamter );//c ircle drawing tool
 //rectquitbuttonx,quit
 }
 //end draw 
 //
 void keyPressed(){
 };//end keypressed 
 //
 void mousePressed(){
    if (mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth &&mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight )if (draw == false) {
   draw = true; } 
   else {
  draw = false ;} 
 }
 {

if (draw == false) {
   draw = true; } 
   else {
  draw = false ;} 
 };
 //mousepressed 
 //end program
