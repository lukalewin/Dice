int total = 0;
int perRoll = 0;
int s = 0;
PFont font;

void setup()
{
  background(10);
  size(500,500);
  noFill();
  strokeWeight(2);
  frameRate(60);
  font = loadFont("Montserrat-Medium-48.vlw");
  textFont(font);
  noLoop();
  textAlign(CENTER);
  textSize(25);
  fill(255);
  text("THIS ROLL",150,35);
  text("TOTAL",350,35);
}
void draw()
{
  fill(10);
  noStroke();
  rect(100,40,400,70);
  perRoll = 0;
  for (int y = 100; y < 400; y+=125) {
    for (int x = 75; x < 400; x+=125) {
      Die one = new Die(x,y);
      one.roll();
      one.show();
      perRoll+= one.rollNum;
      total+=one.rollNum;
      //System.out.println(total);
    }
  }
  textSize(30);
  //textFont(mono);
  fill(255);
  text(perRoll,150,75);
  text(total,350,75);
}
void mousePressed()
{
  redraw();
}
void keyPressed(){
  char r = 'r';
  char Cap = 'R';
 if (key == r || key == Cap){
  if (s % 2 == 0) {
    loop();
    s++;
  } else {
    noLoop();
    s++;
  }
 }
}
class Die //models one single dice cube
{
  int rollNum, myX, myY;
  
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    rollNum = (int)(Math.random()*6+1);
    //System.out.println(rollNum);
  }
  void show()
  { 
    text(" ", 250, 150);
    stroke(210);
    fill(40);
    rect(myX,myY,100,100,10);
    if (rollNum == 1) {
      Circle a = new Circle(myX+50,myY+50);
      a.show();
    } else if (rollNum == 2) {
      Circle a = new Circle(myX+75,myY+25);
      Circle b = new Circle(myX+25,myY+75);
      a.show();
      b.show();
    }else if (rollNum == 3) {
      Circle a = new Circle(myX+75,myY+25);
      Circle b = new Circle(myX+25,myY+75);
      Circle c = new Circle(myX+50,myY+50);
      a.show();
      b.show();
      c.show();
    }else if (rollNum == 4) {
      Circle a = new Circle(myX+25,myY+25);
      Circle b = new Circle(myX+75,myY+25);
      Circle c = new Circle(myX+75,myY+75);
      Circle d = new Circle(myX+25,myY+75);
      a.show();
      b.show();
      c.show();
      d.show();
    }else if (rollNum == 5) {
      Circle a = new Circle(myX+25,myY+25);
      Circle b = new Circle(myX+75,myY+25);
      Circle c = new Circle(myX+75,myY+75);
      Circle d = new Circle(myX+25,myY+75);
      Circle e = new Circle(myX+50,myY+50);
      a.show();
      b.show();
      c.show();
      d.show();
      e.show();
    }else if (rollNum == 6) {
      Circle a = new Circle(myX+25,myY+25);
      Circle b = new Circle(myX+75,myY+25);
      Circle c = new Circle(myX+75,myY+75);
      Circle d = new Circle(myX+25,myY+75);
      Circle e = new Circle(myX+25,myY+50);
      Circle f = new Circle(myX+75,myY+50);
      a.show();
      b.show();
      c.show();
      d.show();
      e.show();
      f.show();
    }
    
  }
  
  class Circle {
  int myX, myY;
  Circle(int x, int y) {
    myX = x;
    myY = y;
  }
  
  void show()
  {
    stroke(210);
    fill(255);
    ellipse(myX,myY,10,10);
  }
}
}
