//Carlyle Gallagher

//To count the score 

int score; // score
int mouseClicked; //for seeing if the bubbles are cliked 

//The bubbles 
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


  //Score counter 
  score = 0;


  //The starting position of the bubbles 
  y = 530;
  //The starting position of the bubbles 
  y2 = 560;
  //The starting position of the bubbles 
  y3 = 600;
  //The starting position of the bubbles 
  y4 = 525;
  //The starting position of the bubbles 
  y5 = 530;
  //The starting position of the bubbles 
  y6 = 605;
  //The starting position of the bubbles 
  y7 = 525;
  //The starting position of the bubbles 
  y8 = 570;
  //The starting position of the bubbles 
  y9 = 530;
  //The starting position of the bubbles 
  y10 = 555;
    score = 0;
}

void draw() {

  //Make the background black 
  background(0); 

  //Score ounter


  textSize(20);
  text("Score: "+ score, 10, 30);

  //Make no outline of the circle 
  noStroke();

  //Make the bubbles move up 
  y = y -2;
  //Make the bubbles move up 
  y2 = y2 -2;
  //Make the bubbles move up RED
  y3 = y3 -2.5;
  //Make the bubbles move up   
  y4 = y4 -2.2;
  //Make the bubbles move up RED
  y5 = y5 -2.4;
  //Make the bubbles move up 
  y6 = y6 -2.5;
  //Make the bubbles move up 
  y7 = y7 -2.4;
  //Make the bubbles move up RED
  y8 = y8 -2.3;
  //Make the bubbles move up RED
  y9 = y9 -2.1;
  //Make the bubbles move up 
  y10 = y10 -2.1;


  //make the bubbles **ALL NON RED ONES** 
  //Make the bubbles white 
  fill(255);

  ellipse(200, y, 30, 30);  
  //make the bubbles 
  ellipse(300, y2, 30, 30); 
  //make the bubbles 
  ellipse(150, y4, 30, 30);
  //make the bubbles 
  ellipse(130, y6, 30, 30);
  //make the bubbles 
  ellipse(450, y7, 30, 30);
  //make the bubbles 
  ellipse(375, y10, 30, 30);

  //Make the other bubbles a drffrent colour **ALL RED ONES** 
  fill(240, 145, 145);

  //make the bubbles RED
  ellipse(270, y3, 30, 30); 
  //make the bubbles RED
  ellipse(215, y5, 30, 30);
  //make the bubbles RED
  ellipse(100, y8, 30, 30);
  //make the bubbles RED
  ellipse(400, y9, 30, 30);

  //Reset the bubbles back to the bottom of the screen
  if (y < 300) {
    y = 525;
  }
  if (y2 < 10) {
    y2 = 525;
  }
  if (y3 < 5) {
    y3 = 525;
  }
  if (y4 < 5) {
    y4 = 525;
  }
  if (y5 < 5) {
    y5 = 525;
  }
  if (y6 < 5) {
    y6 = 525;
  }
  if (y7 < 5) {
    y7 = 525;
  }
  if (y8 < 5) {
    y8 = 525;
  }
  if (y9 < 5) {
    y9 = 525;
  }
  if (y10 < 5) {
    y10 = 525;
  }
}
void mouseClicked () {
  if (mouseY > y3 - 15 && mouseY < y3 + 15 && mouseX > 270 - 15 && mouseX < 270 + 15) {
    score=score+1;
    fill(255); 
    text("hit",100,100);
  }
  if (mouseY > y5 - 15 && mouseY < y5 + 15 && mouseX > 215 - 15 && mouseX < 215 + 15) {
     score=score+1;
      text("hit",100,100);
  }
  if (mouseY > y8 - 15 && mouseY < y8 + 15 && mouseX > 100 - 15 && mouseX < 100 + 15) {
     score=score+1;
      text("hit",100,100);
  }
  if (mouseY > y9 - 15 && mouseY < y9 + 15 && mouseX > 400 - 15 && mouseX < 400 + 15) {
     score=score+1;
      text("hit",100,100);
  }
}