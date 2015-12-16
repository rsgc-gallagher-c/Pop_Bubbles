//Carlyle Gallagher

float y; //the Y positon on the bubbles 
float y2; //the Y positon on the bubbles 
float y3; //the Y positon on the bubbles RED
float y4; //the y position of the bubbles 
float y5; //The y position of the bubbles RED 
float y6; //the y position of the bubbles 
float y7; //the y position of the bubbles 
float y8; //the y position of the bubbles RED 
float y9; //the Y position of the bubbles RED 
float y10; //The y position of the bubbles 

void setup() {

  //Make the canvas 
  size(500, 500);

  //The starting position of the bubbles 
  y = 530;
  //The starting position of the bubbles 
  y2 = 560;
  //The starting position of the bubbles 
  y3 = 580;
  //The starting position of the bubbles 
  y4 = 580;
  //The starting position of the bubbles 
  y5 = 580;
  //The starting position of the bubbles 
  y6 = 580;
  //The starting position of the bubbles 
  y7 = 580;
  //The starting position of the bubbles 
  y8 = 580;
  //The starting position of the bubbles 
  y9 = 580;
  //The starting position of the bubbles 
  y10 = 580;
}

void draw() {

  //Make the background black 
  background(0); 

  //Make no outline of the circle 
  noStroke();
  
  //Make the bubbles move up 
  y = y -2;
  //Make the bubbles move up 
  y2 = y2 -2.2;
  //Make the bubbles move up 
  y3 = y3 -2.5;
  //Make the bubbles move up   //CHANGE SPEEDS 
  y4 = y4 -2;
  //Make the bubbles move up 
  y5 = y5 -2;
  //Make the bubbles move up 
  y6 = y6 -2;
  //Make the bubbles move up 
  y7 = y7 -2;
  //Make the bubbles move up 
  y8 = y8 -2;
  //Make the bubbles move up 
  y9 = y9 -2;
  //Make the bubbles move up //CHANGE SPEEDS
  y10 = y10 -2;


  //make the bubbles **ALL NON RED ONES** 
  //Make the bubbles white 
  fill(255);
  
  ellipse(250, y, 25, 25);  
  //make the bubbles 
  ellipse(250, y2, 25, 25); 
  //make the bubbles 
  ellipse(250, y4, 25, 25);
  //make the bubbles 
  ellipse(250, y6, 25, 25);
  //make the bubbles 
  ellipse(250, y7, 25, 25);
  //make the bubbles 
  ellipse(250, y10, 25, 25);

  //Make the third bubble a drffrent colour **ALL RED ONES**
  fill(240, 145, 145);
  
  //make the bubbles 
  ellipse(250, y3, 25, 25); 
  //make the bubbles 
  ellipse(250, y5, 25, 25);
  //make the bubbles 
  ellipse(250, y8, 25, 25);
  //make the bubbles 
  ellipse(250, y9, 25, 25);



  if (y == 300) {
    y = 550;
  }

  if (y2 == 10) {
    y2 = 525;
  }

  if (y3 == 20) {
    y3 = 525;
  }
}