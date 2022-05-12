//Global Variables
boolean draw=false;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
//
void setup(){
  //Mistaken display orientation should break app . feedback to console and CANVAS
  fullScreen();
//
rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
//
//population
drawingSurfaceX = width*0/4;
  drawingSurfaceY = height*0/5;
  drawingSurfaceWidth = width*3/4;
  drawingSurfaceHeight = height*4/5;
};//end setup
//
 void draw(){
   if(draw==true)line(mouseX,mouseY,pmouseX,pmouseY);
 }
 ;//end draw 
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
