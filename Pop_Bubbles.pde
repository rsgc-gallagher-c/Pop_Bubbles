//Carlyle Gallagher

float y; //the Y positon on the bubbles 
float y2; //the Y positon on the bubbles 
float y3; //the Y positon on the bubbles 

void setup() {

  //Make the canvas 
  size(500, 500);

  //The starting position of the bubbles 
  y = 540;
  //The starting position of the bubbles 
  y2 = 560;
  //The starting position of the bubbles 
  y3 = 530;
}

void draw() {

  //Make the background black 
  background(0); 

  //Make no outline of the circle 
  noStroke();

  //Make the bubbles white 
  fill(255);

  //Make the bubbles move up 
  y2 = y2 -2;
  //Make the bubbles move up 
  y3 = y3 -2;

  //Make the bubbles move up 
  y = y -2;

  //make the bubbles 
  ellipse(250, y, 25, 25);  

  //make the bubbles 
  ellipse(250, y2, 25, 25); 

  //Make the third bubble a drffrent colour
  fill(240, 145, 145);

  //make the bubbles 
  ellipse(250, y3, 25, 25); 


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