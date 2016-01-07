//Carlyle Gallagher

//To count the score 

int score; // score
int mouseClicked; //for seeing if the bubbles are cliked 
//float time; //the time left to complete the game  +++++++++++++++++++++++++++++++++
//float m; //the time left to complete the game +++++++++++++++++++++++++++++++++++++


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

////Time to complete the game ++++++++++++++++++++++++++++++++++++++++++++++++++++++
//time = 45;                                                                       |
//m = 45; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

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
  frameRate(60);
  noLoop();
}

void draw() {

  //Make the background black 
  background(0); 

////Time to complete the game +++++++++++++++++++++++++++++++++++++++++++++++++++++++
//m = m-1;                                                                          |
//textSize(20);                                                                     |
//text("Time Left:", 10, 50); +++++++++++++++++++++++++++++++++++++++++++++++++++++++

  //End Game if score is -12 
  if (score < -11) {

    textSize (50);
    text ("End Game", 10, 100);
    noLoop();
  }

  ////End game if score is +12
  if (score > +11) {

    textSize (50);
    text ("You Won", 10, 100);
    noLoop() ;
  }


  textSize(20);
  text("Score: "+ score, 10, 30);

  //Make no outline of the circle 
  noStroke();


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

  //Make the bubbles move up 
  y = y -2.7;
  //Make the bubbles move up 
  y2 = y2 -2.1;
  //Make the bubbles move up RED
  y3 = y3 -1.7;
  //Make the bubbles move up   
  y4 = y4 -2.2;
  //Make the bubbles move up RED
  y5 = y5 -1.5;
  //Make the bubbles move up 
  y6 = y6 -2.5;
  //Make the bubbles move up 
  y7 = y7 -2.4;
  //Make the bubbles move up RED
  y8 = y8 -2;
  //Make the bubbles move up RED
  y9 = y9 -2.5;
  //Make the bubbles move up 
  y10 = y10 -2.1;

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
  if (y < 7) {
    y = 525;
  }
  if (y2 < 10) {
    y2 = 525;
  }
  if (y3 < 5) {
   y3 = 525;
   score=score-1;
  }
  if (y4 < 5) {
    y4 = 525;
  }
  if (y5 < 5) {
    y5 = 525;
    score=score-1;
  }
  if (y6 < 5) {
    y6 = 525;
  }
  if (y7 < 5) {
    y7 = 525;
  }
  if (y8 < 5) {
    y8 = 525;
    score=score-1;
  }
  if (y9 < 5) {
    y9 = 525;
    score=score-1;
  }
  if (y10 < 5) {
    y10 = 525;
  }
}
void mouseClicked () {

  //This is to add score if a red bubble is clicked 
  if (mouseY > y3 - 15 && mouseY < y3 + 15 && mouseX > 270 - 15 && mouseX < 270 + 15) {
    score=score+1;
    fill(255); 

    y3 = 525;
  }
  if (mouseY > y5 - 15 && mouseY < y5 + 15 && mouseX > 215 - 15 && mouseX < 215 + 15) {
    score=score+1;

    y5 = 525;
  }
  if (mouseY > y8 - 15 && mouseY < y8 + 15 && mouseX > 100 - 15 && mouseX < 100 + 15) {
    score=score+1;

    y8 = 525;
  }
  if (mouseY > y9 - 15 && mouseY < y9 + 15 && mouseX > 400 - 15 && mouseX < 400 + 15) {
    score=score+1;

    y9 = 525;
  }

  //This is to subtract score if a white bubble is clicked 
  if (mouseY > y - 15 && mouseY < y + 15 && mouseX > 200 - 15 && mouseX < 200 + 15) {
    score=score-1;

    y = 200;
  }

  if (mouseY > y2 - 15 && mouseY < y2 + 15 && mouseX > 300 - 15 && mouseX < 300 + 15) {
    score=score-1;

    y2 = 300;
  }

  if (mouseY > y4 - 15 && mouseY < y4 + 15 && mouseX > 150 - 15 && mouseX < 150 + 15) {
    score=score-1;

    y4 = 525;
  }

  if (mouseY > y6 - 15 && mouseY < y6 + 15 && mouseX > 130 - 15 && mouseX < 130 + 15) {
    score=score-1;

    y6 = 525;
  }

  if (mouseY > y7 - 15 && mouseY < y7 + 15 && mouseX > 450 - 15 && mouseX < 450 + 15) {
    score=score-1;

    y7 = 525;
  }

  if (mouseY > y10 - 15 && mouseY < y10 + 15 && mouseX > 375 - 15 && mouseX < 375 + 15) {
    score=score-1;

    y10 = 525;
  }
}

//Press S to start game 
void keyPressed() { 
  if (key == 's') {
    loop();
  }
  //Press R to restart game 
  if (key == 'r') {
    loop();
    setup();
    loop();
  }
}