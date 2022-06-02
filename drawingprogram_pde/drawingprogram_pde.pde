//Global Variables
Boolean draw=false;
//
float quitx, quitButtonY, quitrectWidth, quitrectHeight ;
color orange =#FA740D , yellow =#FAF30D ,green = #499322,purple =#832293 ,teal = #28DEDC,pink = #F784EC,grey =#4F4D50 ,blue = #2333CE ;
int x = width*1/4, y = height*1/4;
int numberofColour = 10;
float[] rectWidth = new float[numberofColour];
float[] rectHeight = new float[numberofColour];
float secondTextX, secondTextY, secondTextWidth, secondTextHeight;
int reset=1;
color white=255, resetColour=white, red=#FF0303, black=0, quitButtonColour;
//
void setup() {
  //Mandatory: Mistaken display orientation should break app, feedback to console and CANVAS
  fullScreen(); //fullScreen, displayWidth, displayHeight
  population();
  textSetup();
  pieceOfPaper();
  //
}//End setup
//
void draw() {
  //
  //if ( paper==true ) pieceOfPaper();
  //
  //Drawing Tools, with a combined Boolean
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) line( mouseX, mouseY, pmouseX, pmouseY ) ;//End Line Draw
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) ellipse ( mouseX, mouseY, drawingDiameter, drawingDiameter ); //Circle Drawing Tool
  //
  //Quit Button Hoverover
  if ( mouseX>=quitx && mouseX<=quitx+quitrectWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitrectHeight  ) {
    quitButtonColour = red;
  } else {
    quitButtonColour = black;
  }//End Quit Button Hoverover
  fill(quitButtonColour);
  noStroke(); //removes rect() outline
  rect(quitx, quitButtonY, quitrectWidth, quitrectHeight );
  stroke(reset);
  fill(resetColour); //White, not night mode friendly
  //
  //Text, Quit Button
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 20; //Change until fits
  textFont(font, size);
  text(quitButtonString, quitx, quitButtonY, quitrectWidth, quitrectHeight );
  //
   rect(x, y, rectWidth[1], rectHeight[1]);
   rect(x, y, rectWidth[2], rectHeight[2]);
   rect(x, y, rectWidth[3], rectHeight[3]);
   rect(x, y, rectWidth[4], rectHeight[4]);
   rect(x, y, rectWidth[5], rectHeight[5]);
   rect(x, y, rectWidth[6], rectHeight[6]);
   rect(x, y, rectWidth[7], rectHeight[7]);
   rect(x, y, rectWidth[8], rectHeight[8]);
   rect(x, y, rectWidth[9], rectHeight[9]);
   
   //
    if ( mouseX>=x && mouseX<=x+rectWidth[1] && mouseY>=y && mouseY<=y+rectHeight [1] ) {
    fill(red);
    rect(x, y, rectWidth[1], rectHeight [1]); //same rect() as above
  } else {
    fill(red);
    rect(x, y, rectWidth[1], rectHeight [1]); //same rect() as above
  } //Button 1
  if ( mouseX>=x && mouseX<=x+rectWidth[2] && mouseY>=y && mouseY<=y+rectHeight [2] ) {
    fill(orange );
    rect(x, y, rectWidth[2], rectHeight [2]); //same rect() as above
  } else {
    fill(orange);
    rect(x, y, rectWidth[2], rectHeight [2]); //same rect() as above
  } //Button 2
  if ( mouseX>=x && mouseX<=x+rectWidth[3] && mouseY>=y && mouseY<=y+rectHeight [3] ){
    fill(yellow);
    rect(x, y, rectWidth[3], rectHeight [3]);
  } else {
    fill(yellow);
    rect(x, y, rectWidth[3], rectHeight [3]);
  } //Button 3
if ( mouseX>=x && mouseX<=x+rectWidth[4] && mouseY>=y && mouseY<=y+rectHeight [4] ){
    fill(green);
    rect(x, y, rectWidth[4], rectHeight [4]);
  } else {
    fill(green);
    rect(x, y, rectWidth[4], rectHeight [4]);
  } 
   if ( mouseX>=x && mouseX<=x+rectWidth[5] && mouseY>=y && mouseY<=y+rectHeight [5] ) {
    fill(teal);
    rect(x, y, rectWidth[1], rectHeight [5]); //same rect() as above
  } else {
    fill(teal);
    rect(x, y, rectWidth[1], rectHeight [5]); //same rect() as above
  } //Button 1
  if ( mouseX>=x && mouseX<=x+rectWidth[6] && mouseY>=y && mouseY<=y+rectHeight [6] ) {
    fill( blue);
    rect(x, y, rectWidth[6], rectHeight [6]); //same rect() as above
  } else {
    fill(blue );
    rect(x, y, rectWidth[6], rectHeight [6]); //same rect() as above
  } //Button 2
  if ( mouseX>=x && mouseX<=x+rectWidth[7] && mouseY>=y && mouseY<=y+rectHeight [7] ){
    fill(purple);
    rect(x, y, rectWidth[7], rectHeight [7]);
  } else {
    fill( purple);
    rect(x, y, rectWidth[7], rectHeight [7]);
  } //Button 3
if ( mouseX>=x && mouseX<=x+rectWidth[8] && mouseY>=y && mouseY<=y+rectHeight [8] ){
    fill(pink);
    rect(x, y, rectWidth[8], rectHeight [8]);
  } else {
    fill(pink);
    rect(x, y, rectWidth[8], rectHeight [8]);
  } 
  if ( mouseX>=x && mouseX<=x+rectWidth[9] && mouseY>=y && mouseY<=y+rectHeight [9] ){
    fill(grey);
    rect(x, y, rectWidth[8], rectHeight [9]);
  } else {
    fill(grey);
    rect(x, y, rectWidth[8], rectHeight [9]);
  }
    //button 4 

  //Second Rectangle with More Text
  fill(white); 
  rect(secondTextX, secondTextY, secondTextWidth, secondTextHeight);
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 13; //Change until fits
  textFont(font, size);
  text(secondTextString, secondTextX, secondTextY, secondTextWidth, secondTextHeight);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //Paper-Button
  if (mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) {
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }//End draw Boolean
  }//Button Paper (Drawing Surface)
  //
  if ( mouseX>=quitx && mouseX<=quitx+quitrectWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitrectHeight  ) exit();
  //
  if ( mouseX>=secondTextX && mouseX<=secondTextX+secondTextWidth && mouseY>=secondTextY && mouseY<=secondTextY+secondTextHeight ) pieceOfPaper();  //paper=true;
  //
}//End mousepressed
//
//End MAIN
