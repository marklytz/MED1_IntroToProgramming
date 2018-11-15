ArrayList<Ball> balls;

//Ball[] BallArray = new Ball[6];

// Values for slider
float rectX = 400;
float rectY = 550;
int rectWidth = 100;
int rectHeight = 30;
int ballAmount = 3;


//Scoring system
int points = 0;

void setup() {

  //Assigning size
  size(800, 600);

  balls = new ArrayList<Ball>();
  for (int i = 0; i < ballAmount; i++) {
   balls.add(new Ball(random(10, 100), random(10, 100)));
   //if (ypos > rectY && ypos < rectY+rectWidth && xpos > rectX && xpos < rectX+rectWidth)

  
 
  //No cursor on sketch
  noCursor();

}}




void draw() {

  //Background color
  background(0);
  
  
  
  for (int i=0; i<balls.size(); i++) {
    balls.get(i).display();
    balls.get(i).move();
    
 if (balls.get(i).ypos>=height) {
      balls.get(i).ypos= 50;
      balls.get(i).xpos=50;
      balls.get(i).xspeed=5;
      balls.get(i).yspeed=5;
      balls.get(i).xdirection=1;
      balls.get(i).ydirection=1;
    }
     //End of game text

    if (balls.get(i).ypos > height) {
      textSize(36);
      text("Game Over", 300, 300);
    }
  } 
    


    // Slider
    rect(mouseX, rectY, rectWidth, rectHeight);

    textSize(24);
    
    //Position of points
    text("Points: " + points, 10, 30);


}


  
   
    
