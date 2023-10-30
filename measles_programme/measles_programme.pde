//Global Variables
int appWidth, appHeight;
float faceX, faceY, faceDiameter;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDimater;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthOpen, mouthReset;
//
void setup() {
  size( 600, 400); //fullScreen;
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  //Ternary Operator
  int smallerDimension = (appWidth >= appHeight) ? appHeight : appWidth;
  println("Smaller Dimension is", smallerDimension);
  //
  //Population
  faceX= appWidth*1/2;
  faceY= appHeight*1/2;
  faceDiameter = smallerDimension;
  backgroundX = faceX - faceDiameter*1/2;
  backgroundY = faceY - faceDiameter*1/2;
  backgroundWidth = faceDiameter;
  backgroundHeight = faceDiameter;
  
  leftEyeX =backgroundX+smallerDimension*1/4;
  leftEyeY =backgroundY+smallerDimension*1/4 ;
  eyeDimater = smallerDimension*1/9;
  rightEyeX =backgroundX+smallerDimension*3/4 ;
  rightEyeY =leftEyeY ;
  noseX1 =  faceX  ;
  noseY1 =rightEyeY ;
  noseX2 =leftEyeX ;
  noseY2 = faceY;
  noseX3 = rightEyeX;
  noseY3 = faceY;
  mouthX1 =noseX2 ;
  mouthY1 = noseX1;
  mouthX2 = noseX3;
  mouthY2 = smallerDimension;
  mouthOpen = smallerDimension*1/10;
  mouthReset = smallerDimension/smallerDimension; //1=reset
  */
  //
  //DIVs
  ellipse( faceX, faceY, faceDiameter, faceDiameter );
  ellipse ( leftEyeX, leftEyeY, eyeDimater, eyeDimater ); 
  //4 Inscribed buttons on the background square not on the circle
  //Solve Isolceles leg length to find rect() width and height
  //2x^2 = radius^2
  rect( backgroundX, backgroundY, smallerDimension/2-sqrt(sq(smallerDimension/2)/2), smallerDimension/2-sqrt(sq(smallerDimension/2)/2) );
  println(backgroundX, smallerDimension, smallerDimension/2, sq( smallerDimension/2 ), sq( smallerDimension/2 ) /2, sqrt( sq( smallerDimension/2 ) /2 ), smallerDimension/2-sqrt(sq(smallerDimension/2)/2) );
  //
} //End setup
//
void draw() {
  //rect( backgroundX, backgroundY, backgroundWidth, backgroundHeight ); //Circle ONLY
  ellipse( faceX, faceY, faceDiameter, faceDiameter );
  ellipse ( leftEyeX, leftEyeY, eyeDimater, eyeDimater ); //Left Eye
  ellipse ( rightEyeX, rightEyeY, eyeDimater, eyeDimater ); //Right Eye
  triangle( noseX1, noseY1, noseX2, noseY2, noseX3, noseY3 ); //Nose
  strokeWeight(mouthOpen);
  //line( mouthX1, mouthY1, mouthX2, mouthY2 ); //mouth
  strokeWeight(mouthReset); //1=reset
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program