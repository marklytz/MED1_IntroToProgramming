int num = 10;
int[] x = new int[num];
int[] y = new int[num];
int indexPosition = 0;
PImage football;


void setup() { 
  size(800, 600);
  football = loadImage("footballpng.png");
  noStroke();
  fill(255, 102);
}

void draw() {
  background(0);
  //football.resize(20,20);
  //image(football,mouseX,mouseY);
  // Shift the values to the right


  x[indexPosition] = mouseX;
  y[indexPosition] = mouseY;

  indexPosition +=1; 
  if (indexPosition == num) {
    indexPosition = 0;
  }

  /*
  for (int i = num-1; i > 0; i--) {
   x[i] = x[i-1];
   y[i] = y[i-1];
   }
   */
  // Add the new values to the beginning of the array

  // Draw the circles
  for (int i = 0; i < num; i++) {
    int pos = (indexPosition+i) % num;
    imageMode(CENTER);
    image(football, x[pos], y[pos], 50-i*3, 50-i*3);

    //ellipse(x[pos], y[pos], i/2.0, i/2.0);
  }
}
