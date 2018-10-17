Flower myFlower1;

void setup(){
 size(1000,750);

 int _r1=50;
 int _petals=7;
 float _x=width/2;
 float _y=height/2;
 int _pc=#F54856;
 int _basecolor=#FCFC0D;
 myFlower1 = new Flower(_r1,_petals,_x,_y,_pc,_basecolor);

}
void draw(){
   background(#48F568);
 myFlower1.display();
myFlower1.move();
myFlower1.bounce();
}
