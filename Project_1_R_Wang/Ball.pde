class Ball
{
  int change;
  color ballcolor = color(100, 100, 100);
  float distance;
  float centerx;
  float centery;

  Ball()
  {
  }

  void drawball(float a, float b, float n, float m)
  {
    fill(ballcolor);
    noStroke();
    ellipse(a+n, b+m, 100, 100);
  }


  void shakingone(int r, int level)
  {
    if (width/2-r<=mouseX && mouseX<=width/2 )
    {
      if (height/2-r<=mouseY && mouseY<=height/2)
        alice.drawball(width/2, height/2, random(-level, level), random(-level, level));
      if (height/2+r>=mouseY && mouseY>=height/2)
        alice.drawball(width/2, height/2, random(-level, level), random(-level, level));
    }
    if (width/2+r>=mouseX && mouseX>=width/2)
    {
      if (height/2-r<=mouseY && mouseY<=height/2)
        alice.drawball(width/2, height/2, random(-level, level), random(-level, level));
      if (height/2+r>=mouseY && mouseY>=height/2)
        alice.drawball(width/2, height/2, random(-level, level), random(-level, level));
    }
    changecolor();
  }

  void shakingtwo(float r, int level) {
    ballcolor=color(215+r, 40-r, 40-r);
    alice.drawball(width/2, height/2, random(-level, level), random(-level, level));
    ballcolor=color(215+r, 40-r, 40-r);
  }



  void changecolor()
  {
    //change = constrain(mouseX-width/2,0,255);
    ballcolor = color(255-abs((mouseX+mouseY)/2-width/2), abs(width/2-(mouseX+mouseY)/2), abs(width/2-(mouseX+mouseY)/2)*2);
  }
}
