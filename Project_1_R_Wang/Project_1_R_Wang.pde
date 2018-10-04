//adjective: afraid

ShakingBall alice;
Knife mouseknife;

void setup()
{
  size(800,800);
  background(219, 189, 172);

}

void draw()
{
  background(219, 189, 172);
  mouseknife = new Knife();
  mouseknife.drawknife(mouseX,mouseY);
  
  alice = new ShakingBall();
  alice.drawball(0,0);
  alice.shaking(250,2);
  alice.shaking(150,4);
  alice.shaking(100,6);
  alice.shaking(50,10);
  
    
}
  


class ShakingBall
{
  int change;
  color ballcolor = color(100,100,100);
  ShakingBall()
  {
  }
  
  void drawball(float n,float m)
  {
    fill(ballcolor);
    noStroke();
    ellipse(width/2+n,height/2+m,100,100);
  }
  
  void shaking(int r,int level)
  {
    if(width/2-r<=mouseX && mouseX<=width/2 )
  {
    if(height/2-r<=mouseY && mouseY<=height/2)
    alice.drawball(random(-level,level),random(-level,level));
    if(height/2+r>=mouseY && mouseY>=height/2)
    alice.drawball(random(-level,level),random(-level,level));
  }
  if(width/2+r>=mouseX && mouseX>=width/2)
  {
    if(height/2-r<=mouseY && mouseY<=height/2)
    alice.drawball(random(-level,level),random(-level,level));
    if(height/2+r>=mouseY && mouseY>=height/2)
    alice.drawball(random(-level,level),random(-level,level));
  }
    changecolor();
  }
  
  void changecolor()
  {
    change = constrain(mouseX-width/2,0,255);
    ballcolor = color(255-abs(mouseX-width/2),100-abs(mouseX-width/2),100-abs(mouseX-width/2));
    
    
  }
}

class Knife
{
   Knife(){
   }
   
   void drawknife(float xLoc, float yLoc)
   {
     noStroke();
     fill(255);
     triangle(xLoc-5,yLoc,xLoc-5,yLoc-40,xLoc+10,yLoc);
     fill(50);
     rect(xLoc-5,yLoc,10,20);
   }
}
