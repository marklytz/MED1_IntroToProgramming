class Flower{
  float r;
  int n_petals;
  float x;
  float y;
  int petalColor;
  int basecolor;
  int xspeed=3;
   int yspeed=3;
  int xdirection=1;
  int ydirection=1;

  
  Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor, int _basecolor){
    r=temp_r;
    n_petals=temp_n_petals;
    x=temp_x;
    y=temp_y;
    petalColor=temp_petalColor;
    basecolor=_basecolor;
  }
  
  void display(){
  float ballX;
  float ballY;
  fill(petalColor);
  {
     for (float i=0;i<PI*2;i+=2*PI/n_petals) {
  ballX=x + r*cos(i);
  ballY=y + r*sin(i);
  fill(#F54856);
  ellipse(ballX,ballY,r,r); 
  }
  fill(basecolor);
  ellipse(x,y,r,r);
 }
  }
 void move(){
   x= x + (xspeed*xdirection);
   y= y + (yspeed*ydirection);
  
 }
 void bounce(){
   if (x>width-r || x<r){
     xdirection *=-1;
   }
   if (y>height-r || y < r) {
    ydirection *= -1; 
 }
  }}
