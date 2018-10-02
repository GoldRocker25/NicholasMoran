class Player{
  float xPos=width/2, yPos=height/2;
  int speed =10;
  
  
  //Constructor
  Player(){
 
  }
  
  void display(){//method for displaying the player
   fill(#FF0000);
   noStroke();
   ellipse(xPos, yPos, 25*scale, 25*scale);
  }
  
  
}
