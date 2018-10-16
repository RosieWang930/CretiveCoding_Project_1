class Knife
{
  boolean firstweapon = true;
  float xdis = mouseX-width/2;
  float ydis = mouseY-height/2;
  float xloc;
  float yloc;
  Knife() {
  }
  
  
  void display(float xLoc, float yLoc)
  {
      if(key == '1'){
      noStroke();
      fill(255);
      pushMatrix();
      translate(mouseX, mouseY);
      triangle(xLoc-5, yLoc, xLoc-5, yLoc-40, xLoc+10, yLoc);
      fill(150);
      rect(xLoc-5, yLoc, 10, 20);
      popMatrix();
      }
    
    if (key == '2') {
      pushMatrix();
      PVector mouse = new PVector(mouseX, mouseY);
      PVector center = new PVector(width/2, height/2);  
      mouse.sub(center);
      mouse.normalize();  
      mouse.mult(40);
      translate(mouseX, mouseY);
      stroke(255);
      strokeWeight(4);
      line(0, 0, mouse.x, mouse.y);
      popMatrix();
    }
    
    if(key == '3'){
      pushMatrix();
      PVector mouse = new PVector(mouseX, mouseY);
      PVector center = new PVector(width/2, height/2);  
      mouse.sub(center);
      mouse.normalize();  
      mouse.mult(40);
      translate(mouseX, mouseY);
      stroke(255);
      strokeWeight(4);
      line(0, 0, mouse.x, mouse.y);
      popMatrix();
      
      xloc = width/2+2*xdis;
      yloc = height/2+2*ydis;
      pushMatrix();
      translate(xloc,yloc);
      xLoc = constrain(xLoc, 0, 20);
      yLoc = constrain(yLoc, 0, 20);
      fill(255,0,0);
      strokeWeight(0);
      ellipse(0, 0, 100,100);
      popMatrix();
    }
  }
}
