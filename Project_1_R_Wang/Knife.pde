class Knife
{
  Knife() {
  }
  boolean firstweapon = true;
  
  void display(float xLoc, float yLoc)
  {
      if(key == '1'){
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
    
    if (key == '2') {
      noStroke();
      fill(255);
      pushMatrix();
      translate(mouseX, mouseY);
      triangle(xLoc-5, yLoc, xLoc-5, yLoc-40, xLoc+10, yLoc);
      fill(150);
      rect(xLoc-5, yLoc, 10, 20);
      popMatrix();
    }
    if (key == '3') {
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
  }
}
