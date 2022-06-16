//Global Variables
Boolean draw=false;
//
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight ;
color orange =#FA740D , yellow =#FAF30D ,ink,green = #499322,purple =#832293 ,teal = #28DEDC,pink = #F784EC,grey =#4F4D50 ,blue = #2333CE ;
int x = width*1/4, y = height*1/4;
int numberofColour = 15;
float[] rectY = new float[numberofColour];
float[] rectX = new float[numberofColour];
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
  
   rectX[1] = appWidth*(13.0/15.0); //Section 3, subsection 2, Numerator is 11
  rectY[1] = appHeight*(13.0/15.0); //Section 3, subsection 4, Numerator is 14
  rectWidth[1] = appWidth*(1.0/3.0)*(1.0/5.0); //Denominator is 15
  rectHeight[1] = appHeight*(2.7/3.0)*(2.7/5.0); //Denominator is 15
  //
   rectX[2] = appWidth*(13.0/15.0); //Section 3, 
  rectY[2] = appHeight*(13.0/15.0); //Section 3,
  rectWidth[2] = appWidth*(1.0/3.0)*(1.0/5.0); 
  rectHeight[2] = appHeight*(2.7/3.0)*(2.4/5.0); 
//
 rectX[3] = appWidth*(13.0/15.0); //Section 3, subsection 2, Numerator is 11
  rectY[3] = appHeight*(13.0/15.0); //Section 3, subsection 4, Numerator is 14
  rectWidth[3] = appWidth*(1.0/3.0)*(1.0/5.0); //Denominator is 15
  rectHeight[3] = appHeight*(2.7/3.0)*(2.1/5.0); //Denominator is 15
  //
   rectX[4] = appWidth*(13.0/15.0); //Section 3, 
  rectY[4] = appHeight*(13.0/15.0); //Section 3,
  rectWidth[4] = appWidth*(1.0/3.0)*(1.0/5.0); 
  rectHeight[4] = appHeight*(2.7/3.0)*(1.8/5.0); 
//
//
 rectX[5] = appWidth*(13.0/15.0); //Section 3, subsection 2, Numerator is 11
  rectY[5] = appHeight*(13.0/15.0); //Section 3, subsection 4, Numerator is 14
  rectWidth[5] = appWidth*(1.0/3.0)*(1.0/5.0); //Denominator is 15
  rectHeight[5] = appHeight*(2.7/3.0)*(1.5/5.0); //Denominator is 15
  //
   rectX[6] = appWidth*(13.0/15.0); //Section 3, 
  rectY[6] = appHeight*(13.0/15.0); //Section 3,
  rectWidth[6] = appWidth*(1.0/3.0)*(1.0/5.0); 
  rectHeight[6] = appHeight*(2.7/3.0)*(1.2/5.0); 
//
//
 rectX[7] = appWidth*(13.0/15.0); //Section 3, subsection 2, Numerator is 11
  rectY[7] = appHeight*(13.0/15.0); //Section 3, subsection 4, Numerator is 14
  rectWidth[7] = appWidth*(1.0/3.0)*(1.0/5.0); //Denominator is 15
  rectHeight[7] = appHeight*(2.7/3.0)*(0.9/5.0); //Denominator is 15
  //
   rectX[8] = appWidth*(13.0/15.0); //Section 3, 
  rectY[8] = appHeight*(13.0/15.0); //Section 3,
  rectWidth[8] = appWidth*(1.0/3.0)*(1.0/5.0); 
  rectHeight[8] = appHeight*(2.7/3.0)*(0.6/5.0); 
//
 rectX[9] = appWidth*(13.0/15.0); //Section 3, 
  rectY[9] = appHeight*(13.0/15.0); //Section 3,
  rectWidth[9] = appWidth*(1.0/3.0)*(1.0/5.0); 
  rectHeight[9] = appHeight*(2.7/3.0)*(0.3/5.0); 
//
//rectX[10] = appWidth*(13.0/15.0); //Section 3, 
  //rectY[10] = appHeight*(13.0/15.0); //Section 3,
  //rectWidth[10] = appWidth*(2.0/3.0)*(2.0/5.0); 
  //rectHeight[10] = appHeight*(0.3/3.0)*(0.3/5.0); 
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
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight  ) {
    quitButtonColour = red;
  } else {
    quitButtonColour = black;
    
  }//End Quit Button Hoverover
  fill(quitButtonColour);
  noStroke(); //removes rect() outline
  rect(quitButtonX, quitButtonY,quitButtonWidth , quitButtonHeight );
  stroke(reset);
  fill(resetColour); //White, not night mode friendly
  //
  //Text, Quit Button
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 20; //Change until fits
  textFont(font, size);
  text(quitButtonString, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
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
   rect(x, y, rectWidth[10], rectHeight[10]);
   
   
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
    fill( purple  );
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
    fill(grey );
    rect(x, y, rectWidth[8], rectHeight [9]);
  }
  if ( mouseX>=x && mouseX<=x+rectWidth[10] && mouseY>=y && mouseY<=y+rectHeight [10] ){
    loadImage("Geek Squad Setup Guide.png");
    rect(x, y, rectWidth[8], rectHeight [10]);
  } else {
  loadImage("Geek Squad Setup Guide.png");
    rect(x, y, rectWidth[10], rectHeight [10]);
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
  
    if ( mouseX>=x && mouseX<=x+rectWidth[1] && mouseY>=y && mouseY<=y+rectHeight [1] ) ink =#FF0303; {
    }
  if ( mouseX>=x && mouseX<=x+rectWidth[2] && mouseY>=y && mouseY<=y+rectHeight [2] ) {
    
  } //Button 2
  if ( mouseX>=x && mouseX<=x+rectWidth[3] && mouseY>=y && mouseY<=y+rectHeight [3] ){
    
  } //Button 3
if ( mouseX>=x && mouseX<=x+rectWidth[4] && mouseY>=y && mouseY<=y+rectHeight [4] ){
  
   
   if ( mouseX>=x && mouseX<=x+rectWidth[5] && mouseY>=y && mouseY<=y+rectHeight [5] ) {
   } //Button 1
  if ( mouseX>=x && mouseX<=x+rectWidth[6] && mouseY>=y && mouseY<=y+rectHeight [6] ) {
  }//Button 2
  if ( mouseX>=x && mouseX<=x+rectWidth[7] && mouseY>=y && mouseY<=y+rectHeight [7] ){
  }//Button 3
if ( mouseX>=x && mouseX<=x+rectWidth[8] && mouseY>=y && mouseY<=y+rectHeight [8] ){
}
  if ( mouseX>=x && mouseX<=x+rectWidth[9] && mouseY>=y && mouseY<=y+rectHeight [9] ){
   
    }
  //
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight  ) exit();
  
}//
  if ( mouseX>=secondTextX && mouseX<=secondTextX+secondTextWidth && mouseY>=secondTextY && mouseY<=secondTextY+secondTextHeight ) pieceOfPaper();  //paper=true
}
  

  
//End mousepressed
//
//End MAIN
