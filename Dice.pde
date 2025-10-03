Die goob;
 void setup()
  {
    goob = new Die(60,300);
    size (550,900);
      noLoop();
  }
  void draw()
  {
    int total = 0;
  for (int i = 0; i < 10; i++){
    for (int c = 0; c < 10; c++){
      int x = 60 + c * 80;
      int y = 60 + i * 80;
     Die goob = new Die(x,y);
          goob.show();
          total += goob.value;
    }
  }
     
    fill(255);
  rectMode(CENTER);
  rect(width/2, height - 40, 200, 40);
  fill(0);
    textAlign(CENTER, CENTER);
  textSize(20);
  text("Total = " + total, width/2, height-40);
      //your code here
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
    int value, myX, myY;
      //member variable declarations here
      Die(int x, int y) //constructor
      {
        myX = x;
        myY = y;
        roll();
          //variable initializations here
      }
      void roll()
      {
        value = (int)(Math.random()*6)+1;
          //your code here
      }
      void show()
      {
        fill(255,255,255);
        rectMode(CENTER);
        rect(myX,myY,60,60);
          //your code here
      fill(0);
    int r = 80/4; // offset for dots
    if (value == 1) {
      ellipse(myX, myY, 12, 12);
    } else if (value == 2) {
      ellipse(myX-r, myY-r, 12, 12);
      ellipse(myX+r, myY+r, 12, 12);
    } else if (value == 3) {
     ellipse(myX-r, myY-r, 12, 12);
      ellipse(myX, myY, 12, 12);
      ellipse(myX+r, myY+r, 12, 12);
    } else if (value == 4) {
      ellipse(myX-r, myY-r, 12, 12);
      ellipse(myX+r, myY-r, 12, 12);
      ellipse(myX-r, myY+r, 12, 12);
      ellipse(myX+r, myY+r, 12, 12);
    } else if (value == 5) {
      ellipse(myX-r, myY-r, 12, 12);
      ellipse(myX+r, myY-r, 12, 12);
      ellipse(myX, myY, 12, 12);
      ellipse(myX-r, myY+r, 12, 12);
      ellipse(myX+r, myY+r, 12, 12);
    } else if (value == 6) {
      ellipse(myX-r, myY-r, 12, 12);
      ellipse(myX+r, myY-r, 12, 12);
      ellipse(myX-r, myY, 12, 12);
      ellipse(myX+r, myY, 12, 12);
      ellipse(myX-r, myY+r, 12, 12);
      ellipse(myX+r, myY+r, 12, 12);
    }
  }
}
