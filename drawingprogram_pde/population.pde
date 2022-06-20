 int appWidth, appHeight;
void population() {
  appWidth = width;//displayWidth
  appHeight = height;// displayHeight

  //
  drawingSurfaceX = width*0/4;
  drawingSurfaceY = height*0/5;
  drawingSurfaceWidth = width*3/4;
  drawingSurfaceHeight = height*4/5;
  drawingDiameter = width*1/100;
  //
  quitButtonX = width*9/10; //18/20=9/10
  quitButtonY = height*0/20;
  quitButtonWidth = width*1/10; // 2/20=1/10
  quitButtonHeight = height*1/20;
  //
   //
  ButtonX = width*9/10; //18/20=9/10
  ButtonY = height*0/20;
  ButtonWidth = width*1/10; // 2/20=1/10
  ButtonHeight = height*5/20;
  //
  titleX  = width*9/10; 
  titleY = height*0/20;
  titleWidth = width*1/10;
  titleHeight = height*6/20;
  //
  secondTextX = quitButtonX;
  secondTextY = height*1/20;
  secondTextWidth = quitButtonWidth;
  secondTextHeight = quitButtonHeight;
  //
   thirdTextX =    ButtonX;
  thirdTextY =  ButtonY;
  thirdTextWidth = ButtonWidth  ;
  thirdTextHeight = ButtonHeight; 
  //
 
}//End population
