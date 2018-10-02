// make bullet
//make zombie
//make border that rescrits player



/*
a character than can control by wasd or arrow keys
can shoot a bullet that randomly appear from two locations
be able to aim and shoot by clicking my mouse
*/

//most values needed in the main portion of the code
Player player;
int scale = 3;
boolean gameStart = false, paused = false, overButton = false;
color c1=#000000;

void setup(){
  background(#937016);
  size(768, 768);// scaled to three times
  player = new Player();
}

void draw(){
  if(!gameStart){//shows title screen
    titleScreen();
  }else{//runs the game
    if(!paused){
      runGame();
    }else{//show paused menu w/ text that says paused
      
    }
  }
}

//lets the player hit start so the game won't begin until they are ready
void titleScreen(){
  button();
  fill(#DEDAD2);
  textSize(30*scale);
  text("Start Game", width/5, height/2);
}

//the "Start Game" button
void button() {
  refresh();
  noStroke();
  fill(c1);
  rect(width/6, height/2.75, 180*scale, 50*scale, 3*scale);
}

//runs most elements of the game
void runGame(){
    background(#D8D8D8);
    player.display(); //disaplys player to default pos (middle)
}

void mousePressed(){
  if(gameStart){//game has started
   // player.shoot(mouseX, mouseY);
  }else{//game is at the title screen
    if(overButton){//checks if the mouse is over the button
      gameStart = true;
    }
  }
}

//changes color of button according to mouse position
void refresh(){
  if(overChoice(mouseX, mouseY, width/6, (width/6)+180*scale, 50*scale, (int)(height/2.75))){
    c1 = color(#717171);
    overButton = true;
  }else{
    c1 = color(#000000);
    overButton = false;
  }
}

//checks if the mouse is over a choice
boolean overChoice(int x, int y, int rectangleXvalue, int rectanglexValuePlusWidth, int h, int yValue){
  if(x>=rectangleXvalue && x<=rectanglexValuePlusWidth && y>=yValue && y<=yValue+h){
    return true;
  }
  return false;
}

//moving the player
void keyPressed(){
 if(gameStart==true){ //prevents player from moving before the game starts
  if(key=='w'){
    player.yPos = player.yPos - player.speed;
  }
  if(key=='s'){
    player.yPos = player.yPos + player.speed;
  }
  if(key=='d'){
    player.xPos = player.xPos + player.speed;
  }
  if(key=='a'){
    player.xPos = player.xPos - player.speed;
  }
 }
}
