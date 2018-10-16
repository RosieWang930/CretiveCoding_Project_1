class Monster
{
  Monster(){
  }
 
  void display(){
    stroke(255,0,0);
    strokeWeight(1);
    fill(255,random(0,255),random(0,255));
    triangle(0,40,5,0,10,40);
  }
}
