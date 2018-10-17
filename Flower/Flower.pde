

int r=60;
float ballX;
float ballY;
int n_petals=12;
float ballxPos=(random(10,500));
float ballyPos=(random(10,600));




void setup() {
  size(1000,750);
  background(#43AF76);
}

void draw(){
  
 noStroke();
 int petalColor=#F5E748;
 
flower(r,n_petals,ballxPos,ballyPos,petalColor);
  
flower(r,n_petals,ballxPos,ballyPos,petalColor);

flower(r,n_petals,ballxPos,ballyPos,petalColor);


}  
 void flower (float r, int n_petals, float ballxPos, float ballyPos, int petalColor) {
     for (float i=0;i<PI*2;i+=2*PI/n_petals) {
  ballX=ballxPos + r*cos(i);
  ballY=ballyPos + r*sin(i);
  fill(#F54856);
  ellipse(ballX,ballY,r,r); 
  }
  fill(petalColor);
  ellipse(ballxPos,ballyPos,r,r);
 }
