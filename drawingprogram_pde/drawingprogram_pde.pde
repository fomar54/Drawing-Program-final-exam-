//Global Variables
Boolean draw=false, draw1=false ;
//
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight ;
float ButtonX, ButtonY, ButtonWidth, ButtonHeight ;
float titleX, titleY, titleWidth, titleHeight;
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
color orange =#FA740D, yellow =#FAF30D, ink, green = #499322, purple =#832293, teal = #28DEDC, pink = #F784EC, grey =#4F4D50, blue = #2333CE ;
int x = width*1/4, y = height*1/4;
int numberofColour = 15;
float[] rectY = new float[numberofColour];
float[] rectX = new float[numberofColour];
float[] rectWidth = new float[numberofColour];
float[] rectHeight = new float[numberofColour];
PImage pic1;
float secondTextX, secondTextY, secondTextWidth, secondTextHeight;
float thirdTextX, thirdTextY, thirdTextWidth, thirdTextHeight;


float linesize;
int reset=1;
color white=#FFFFFF, offwhite=#F2E1E1, resetColour=white, red=#FF0303, black=0, quitButtonColour;
//
void setup() {
  //Mandatory: Mistaken display orientation should break app, feedback to console and CANVAS
  fullScreen(); //fullScreen, displayWidth, displayHeight
  population();
  textSetup();
  pieceOfPaper();
  pic1 = loadImage("images.jpeg");
  //
  rectX[13] = appWidth*(13.0/15.0); //Section 3, 
  rectY[13] = appHeight*(13.0/15.0); //Section 3,
  rectWidth[13] = appWidth*(1.0/3.0)*(4.0/5.0); 
  rectHeight[13] = appHeight*(0.6/3.0)*(3.9/5.0);
  //
  rectX[12] = appWidth*(13.0/15.0); //Section 3, 
  rectY[12] = appHeight*(13.0/15.0); //Section 3,
  rectWidth[12] = appWidth*(1.0/3.0)*(3.0/5.0); 
  rectHeight[12] = appHeight*(0.6/3.0)*(3.9/5.0);

  //
  rectX[11] = appWidth*(13.0/15.0); //Section 3, 
  rectY[11] = appHeight*(13.0/15.0); //Section 3,
  rectWidth[11] = appWidth*(1.0/3.0)*(2.0/5.0); 
  rectHeight[11] = appHeight*(0.6/3.0)*(3.9/5.0);


  //
  rectX[10] = appWidth*(13.0/15.0); //Section 3, 
  rectY[10] = appHeight*(13.0/15.0); //Section 3,
  rectWidth[10] = appWidth*(1.0/3.0)*(1.0/5.0); 
  rectHeight[10] = appHeight*(2.7/3.0)*(3.9/5.0);

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
}//End setup
//
void draw() {
  //
  //if ( paper==true ) pieceOfPaper();
  stroke(ink);
  fill(ink);
 strokeWeight(linesize);

  //
  //Drawing Tools, with a combined Boolean
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) line( mouseX, mouseY, pmouseX, pmouseY ) ;//End Line Draw
  if ( draw1==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) ellipse ( mouseX, mouseY, drawingDiameter, drawingDiameter ); //Circle Drawing Tool
 
  //
  //Quit Button Hoverover
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight  ) {
    quitButtonColour = red;
  } else {
    quitButtonColour = black;
  }//End Quit Button Hoverover
  if ( mouseX>=ButtonX && mouseX<=ButtonX+ButtonWidth && mouseY>=ButtonY && mouseY<=ButtonY+ButtonHeight  ) {
    quitButtonColour = white;
  } else {
    quitButtonColour = grey ;
  }//End Quit Button Hoverover
  fill(quitButtonColour);
  noStroke(); //removes rect() outline
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
  stroke(reset);
  fill(resetColour); //White, not night mode friendly
  //
  rect(ButtonX, ButtonY, ButtonWidth, ButtonHeight );
  rect(titleX, titleY, titleWidth, titleHeight ); 
  //Text, Quit Button
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 20; //Change until fits
  textFont(font, size);
  text(quitButtonString, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight ); 
  text(titletextstring, titleX, titleY, titleWidth, titleHeight);

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
  rect(x, y, rectWidth[11], rectHeight[11]);
  rect(x, y, rectWidth[12], rectHeight[12]);
  rect(x, y, rectWidth[13], rectHeight[13]);
  //


  //
  if ( mouseX>=x && mouseX<=x+rectWidth[13] && mouseY>=y && mouseY<=y+rectHeight [13] ) {
    fill(offwhite);
    rect(x, y, rectWidth[13], rectHeight [13]);
  } else {
    fill(offwhite );
    rect(x, y, rectWidth[13], rectHeight [13]);
  }
  if ( mouseX>=x && mouseX<=x+rectWidth[12] && mouseY>=y && mouseY<=y+rectHeight [12] ) {
    fill(offwhite);
    rect(x, y, rectWidth[12], rectHeight [12]);
  } else {
    fill(offwhite );
    rect(x, y, rectWidth[12], rectHeight [12]);
  }
  if ( mouseX>=x && mouseX<=x+rectWidth[11] && mouseY>=y && mouseY<=y+rectHeight [11] ) {
    fill(offwhite);
    rect(x, y, rectWidth[11], rectHeight [11]);
  } else {
    fill(offwhite );
    rect(x, y, rectWidth[11], rectHeight [11]);
  }
  if ( mouseX>=x && mouseX<=x+rectWidth[10] && mouseY>=y && mouseY<=y+rectHeight [10] ) {
    fill(offwhite);
    rect(x, y, rectWidth[10], rectHeight [10]);
  } else {
    fill(offwhite );
    rect(x, y, rectWidth[10], rectHeight [10]);
  }
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
  if ( mouseX>=x && mouseX<=x+rectWidth[3] && mouseY>=y && mouseY<=y+rectHeight [3] ) {
    fill(yellow);
    rect(x, y, rectWidth[3], rectHeight [3]);
  } else {
    fill(yellow);
    rect(x, y, rectWidth[3], rectHeight [3]);
  } //Button 3
  if ( mouseX>=x && mouseX<=x+rectWidth[4] && mouseY>=y && mouseY<=y+rectHeight [4] ) {
    fill(green);
    rect(x, y, rectWidth[4], rectHeight [4]);
  } else {
    fill(green);
    rect(x, y, rectWidth[4], rectHeight [4]);
  } 
  if ( mouseX>=x && mouseX<=x+rectWidth[5] && mouseY>=y && mouseY<=y+rectHeight [5] ) {
    fill(teal);
    rect(x, y, rectWidth[5], rectHeight [5]); //same rect() as above
  } else {
    fill(teal);
    rect(x, y, rectWidth[5], rectHeight [5]); //same rect() as above
  } //Button 1
  if ( mouseX>=x && mouseX<=x+rectWidth[6] && mouseY>=y && mouseY<=y+rectHeight [6] ) {
    fill( blue);
    rect(x, y, rectWidth[6], rectHeight [6]); //same rect() as above
  } else {
    fill(blue );
    rect(x, y, rectWidth[6], rectHeight [6]); //same rect() as above
  } //Button 2
  if ( mouseX>=x && mouseX<=x+rectWidth[7] && mouseY>=y && mouseY<=y+rectHeight [7] ) {
    fill(purple);
    rect(x, y, rectWidth[7], rectHeight [7]);
  } else {
    fill( purple  );
    rect(x, y, rectWidth[7], rectHeight [7]);
  } //Button 3
  if ( mouseX>=x && mouseX<=x+rectWidth[8] && mouseY>=y && mouseY<=y+rectHeight [8] ) {
    fill(pink);
    rect(x, y, rectWidth[8], rectHeight [8]);
  } else {
    fill(pink);
    rect(x, y, rectWidth[8], rectHeight [8]);
  } 
  if ( mouseX>=x && mouseX<=x+rectWidth[9] && mouseY>=y && mouseY<=y+rectHeight [9] ) {
    fill(grey);
    rect(x, y, rectWidth[9], rectHeight [9]);
  } else {
    fill(grey );
    rect(x, y, rectWidth[9], rectHeight [9]);
  }


  //button 4 

  //Second Rectangle with More Text
  fill(red); 
  rect(secondTextX, secondTextY, secondTextWidth, secondTextHeight);
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 13; //Change until fits
  textFont(font, size);
  text(secondTextString, secondTextX, secondTextY, secondTextWidth, secondTextHeight);
  //

  text(ButtonString, thirdTextX, thirdTextY, thirdTextWidth, thirdTextHeight);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {

  if (  mouseX>= ButtonX&& mouseX<= ButtonX+ButtonWidth && mouseY>=ButtonY && mouseY<=ButtonY+ButtonHeight) {
    if (draw1 == false) {
      draw1 = true;
    } else {
      draw1 = false;
    }
  }
  //Paper-Button

  if (mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) {
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
  }


  //

  //End draw Boolean
  if (  mouseX>=x && mouseX<=x+rectWidth[13] && mouseY>=y && mouseY<=y+rectHeight [13]) linesize =1;
  if (  mouseX>=x && mouseX<=x+rectWidth[12] && mouseY>=y && mouseY<=y+rectHeight [12]) linesize=10;
  if (  mouseX>=x && mouseX<=x+rectWidth[11] && mouseY>=y && mouseY<=y+rectHeight [11]) linesize=45;
  //Button Paper (Drawing Surface)
  if (  mouseX>=x && mouseX<=x+rectWidth[10] && mouseY>=y && mouseY<=y+rectHeight [10]) ink = #FFFFFF;
  if ( mouseX>=x && mouseX<=x+rectWidth[1] && mouseY>=y && mouseY<=y+rectHeight [1] ) ink = #FF0303; 

  if ( mouseX>=x && mouseX<=x+rectWidth[2] && mouseY>=y && mouseY<=y+rectHeight [2] ) ink=#FA740D;
  //Button 2
  if ( mouseX>=x && mouseX<=x+rectWidth[3] && mouseY>=y && mouseY<=y+rectHeight [3] ) ink = #FAF30D;
  //Button 3
  if ( mouseX>=x && mouseX<=x+rectWidth[4] && mouseY>=y && mouseY<=y+rectHeight [4] ) ink =#499322;
  if ( mouseX>=x && mouseX<=x+rectWidth[5] && mouseY>=y && mouseY<=y+rectHeight [5] ) ink =  #28DEDC;
  //Button 1
  if ( mouseX>=x && mouseX<=x+rectWidth[6] && mouseY>=y && mouseY<=y+rectHeight [6] ) ink =#2333CE ;//Button 2
  if ( mouseX>=x && mouseX<=x+rectWidth[7] && mouseY>=y && mouseY<=y+rectHeight [7] )ink=#832293 ; //Button 3
  if ( mouseX>=x && mouseX<=x+rectWidth[8] && mouseY>=y && mouseY<=y+rectHeight [8] ) ink= #F784EC;
  if ( mouseX>=x && mouseX<=x+rectWidth[9] && mouseY>=y && mouseY<=y+rectHeight [9] )ink = #4F4D50;
  //
  if (  mouseX>= titleX  && mouseX<= titleX +  titleWidth&& mouseY>=titleY && mouseY<=titleY+ titleHeight) image(pic1, drawingSurfaceX+width*1/60, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);

  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight  ) exit();

  if ( mouseX>=secondTextX && mouseX<=secondTextX+secondTextWidth && mouseY>=secondTextY && mouseY<=secondTextY+secondTextHeight ) pieceOfPaper();  //paper=true
}
//End mousepressed
//
//End MAIN
