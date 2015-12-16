//Carlyle Gallagher

float y; //the Y positon on the bubbles 


void setup() {

  //Make the canvas 
  size(500, 500);

  //The starting position of the bubbles 
  y = 540;
}

void draw() {

  //Make the background black 
  background(0); 

  //Make no outline of the circle 
  noStroke();

  //Make the bubbles white 
  fill(255);

  //Make the bubbles move up 
  y = y -2;

  //make the bubbles 
  ellipse(250, y, 25, 25);  



  if (y == 300) {
    y = 550;
  }
}