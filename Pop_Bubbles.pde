//Carlyle Gallagher

//To count the score 

int score; // score
int mouseClicked; //for seeing if the bubbles are cliked 
float time; //the time left to complete the game  

//The bubbles 
float B; //the Y positon on the bubbles 
float B2; //the Y positon on the bubbles 
float B3; //the Y positon on the bubbles RED
float B4; //the y position of the bubbles 
float B5; //The y position of the bubbles RED 
float B6; //the y position of the bubbles 
float B7; //the y position of the bubbles 
float B8; //the y position of the bubbles RED 
float B9; //the Y position of the bubbles RED 
float B10;//The y position of the bubbles 


void setup() {

  //Make the canvas 
  size(500, 500);

  //Time to complete the game 
  time = 30;                                                                       

  //Score counter 
  score = 0;

  //The starting position of the bubbles 
  B = 530;
  //The starting position of the bubbles 
  B2 = 560;
  //The starting position of the bubbles 
  B3 = 600;
  //The starting position of the bubbles 
  B4 = 525;
  //The starting position of the bubbles 
  B5 = 530;
  //The starting position of the bubbles 
  B6 = 605;
  //The starting position of the bubbles 
  B7 = 525;
  //The starting position of the bubbles 
  B8 = 570;
  //The starting position of the bubbles 
  B9 = 530;
  //The starting position of the bubbles 
  B10 = 555;
  score = 0;
  frameRate(60);
  noLoop();
}

void draw() {

  //Make the background black 
  background(0); 

  //Time to complete the game 
  time = time-0.016;                                                                      
  textSize(20);                                                                     
  text("Time Left: " + time, 10, 50); 

  //End game if time left is 0
  if (time < 1) {
    textSize (50);
    text ("End Game", 10, 100);
    noLoop();
  }

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

  ellipse(200, B, 30, 30);  
  //make the bubbles 
  ellipse(300, B2, 30, 30); 
  //make the bubbles 
  ellipse(150, B4, 30, 30);
  //make the bubbles 
  ellipse(130, B6, 30, 30);
  //make the bubbles 
  ellipse(450, B7, 30, 30);
  //make the bubbles 
  ellipse(375, B10, 30, 30);

  //Make the bubbles move up 
  B = B -2.7;
  //Make the bubbles move up 
  B2 = B2 -2.1;
  //Make the bubbles move up RED
  B3 = B3 -1.7;
  //Make the bubbles move up   
  B4 = B4 -2.2;
  //Make the bubbles move up RED
  B5 = B5 -1.5;
  //Make the bubbles move up 
  B6 = B6 -2.5;
  //Make the bubbles move up 
  B7 = B7 -2.4;
  //Make the bubbles move up RED
  B8 = B8 -2;
  //Make the bubbles move up RED
  B9 = B9 -2.5;
  //Make the bubbles move up 
  B10 = B10 -2.1;

  //Make the other bubbles a drffrent colour **ALL RED ONES** 
  fill(240, 145, 145);

  //make the bubbles RED
  ellipse(270, B3, 30, 30); 
  //make the bubbles RED
  ellipse(215, B5, 30, 30);
  //make the bubbles RED
  ellipse(100, B8, 30, 30);
  //make the bubbles RED
  ellipse(400, B9, 30, 30);

  //Reset the bubbles back to the bottom of the screen
  if (B < 7) {
    B = 525;
  }
  if (B2 < 10) {
    B2 = 525;
  }
  if (B3 < 5) {
    B3 = 525;
    score=score-1;
  }
  if (B4 < 5) {
    B4 = 525;
  }
  if (B5 < 5) {
    B5 = 525;
    score=score-1;
  }
  if (B6 < 5) {
    B6 = 525;
  }
  if (B7 < 5) {
    B7 = 525;
  }
  if (B8 < 5) {
    B8 = 525;
    score=score-1;
  }
  if (B9 < 5) {
    B9 = 525;
    score=score-1;
  }
  if (B10 < 5) {
    B10 = 525;
  }
}
void mouseClicked () {

  //This is to add score if a red bubble is clicked 
  if (mouseY > B3 - 15 && mouseY < B3 + 15 && mouseX > 270 - 15 && mouseX < 270 + 15) {
    score=score+1;
    fill(255); 

    B3 = 525;
  }
  if (mouseY > B5 - 15 && mouseY < B5 + 15 && mouseX > 215 - 15 && mouseX < 215 + 15) {
    score=score+1;

    B5 = 525;
  }
  if (mouseY > B8 - 15 && mouseY < B8 + 15 && mouseX > 100 - 15 && mouseX < 100 + 15) {
    score=score+1;

    B8 = 525;
  }
  if (mouseY > B9 - 15 && mouseY < B9 + 15 && mouseX > 400 - 15 && mouseX < 400 + 15) {
    score=score+1;

    B9 = 525;
  }

  //This is to subtract score if a white bubble is clicked 
  if (mouseY > B - 15 && mouseY < B + 15 && mouseX > 200 - 15 && mouseX < 200 + 15) {
    score=score-1;

    B = 200;
  }

  if (mouseY > B2 - 15 && mouseY < B2 + 15 && mouseX > 300 - 15 && mouseX < 300 + 15) {
    score=score-1;

    B2 = 300;
  }

  if (mouseY > B4 - 15 && mouseY < B4 + 15 && mouseX > 150 - 15 && mouseX < 150 + 15) {
    score=score-1;

    B4 = 525;
  }

  if (mouseY > B6 - 15 && mouseY < B6 + 15 && mouseX > 130 - 15 && mouseX < 130 + 15) {
    score=score-1;

    B6 = 525;
  }

  if (mouseY > B7 - 15 && mouseY < B7 + 15 && mouseX > 450 - 15 && mouseX < 450 + 15) {
    score=score-1;

    B7 = 525;
  }

  if (mouseY > B10 - 15 && mouseY < B10 + 15 && mouseX > 375 - 15 && mouseX < 375 + 15) {
    score=score-1;

    B10 = 525;
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