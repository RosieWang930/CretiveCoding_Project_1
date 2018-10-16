class Weapon
{
  Weapon() {
  }

  void spike(float m) {
    strokeWeight(0);
    stroke(0, 0, 0, 0);
    pushMatrix();
    translate(width/2, height/2);
    int i;
    fill(0);
    for (i=250; i>0; i--)
    {
      rotate(radians(i));
      rect(-10, -5, 50-m, 20*i);
    }
    popMatrix();
  }
}
