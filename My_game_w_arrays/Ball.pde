class Ball {
  // Values for ball
  int rad = 15;
  float xpos, ypos;

  float xspeed = 5;
  float yspeed = 5; 

  float xdirection = 1;
  float ydirection = 1;
  
  Ball (float xpos_temp, float ypos_temp) {
    xpos = xpos_temp;
    ypos = ypos_temp;
  }

  void display() {
    ellipse(xpos, ypos, rad, rad);
  }

  void move() {
    // Updates the position of the ball
    xpos = xpos + (xspeed * xdirection);
    ypos = ypos + (yspeed * ydirection); 

    // movement (ball)
    if (ypos > rectY && ypos < rectY+rectWidth && xpos > rectX && xpos < rectX+rectWidth) {
      ydirection *= -1.01;
      points = points + 1;
    }

    if (xpos > width-rad || xpos < rad) {
      xdirection *= -1.10;
    }

    if (ypos < rad) {
      ydirection *= -1.10;
    }
  }
}
