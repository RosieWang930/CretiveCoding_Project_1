//adjective: afraid

Ball alice;
Knife mouseknife;
Weapon weapon;
Monster mon;

float speed;
color co;
float xLoc;
float yLoc;
float m;
int tile;
int a;
void setup()
{
  size(800, 800);
  //background(219, 189, 172);
  xLoc = 400;
  yLoc = 800;
}

void draw()
{
  frameRate(60);
  alice = new Ball();
  mon = new Monster();
  beginningscene();
  if (xLoc==0 && yLoc<=360 && yLoc >=200) {
    manual();
    xLoc=0;
    yLoc=250;
  }

  if (xLoc==800 && yLoc<=360 && yLoc >=200) {
    automation();
    xLoc=800;
    yLoc=250;
  }
  
}


void beginningscene() {
  background(0);
  locchange();
  alice.drawball(xLoc, yLoc, 0, 0);
  xLoc = constrain(xLoc, 0, 800);
  yLoc = constrain(yLoc, 0, 800);
  pushMatrix();

  if (keyCode == UP) {
    a=0;
    a+=millis()/300;
    a = constrain(a,0,30);
    pushMatrix();
    translate(xLoc-5,yLoc+80-a);
    mon.display();
    popMatrix();
  }
  if (keyCode == DOWN) {
    a=0;
    a+=millis()/300;
    a = constrain(a,0,30);
    pushMatrix();
    translate(xLoc+5,yLoc-80+a);
    rotate(radians(180));
    mon.display();
    popMatrix();
   // a=0;
  }
  if (keyCode == LEFT) {
    a=0;
    a+=millis()/300;
    a = constrain(a,0,30);
    pushMatrix();
    translate(xLoc+80-a,yLoc);
    rotate(radians(270));
    mon.display();
    popMatrix();
  }
  if (keyCode == RIGHT) {
    a=0;
    a+=millis()/400;
    a = constrain(a,0,30);
    pushMatrix();
    translate(xLoc-80+a,yLoc);
    rotate(radians(90));
    mon.display();
    popMatrix();
  }
  
  popMatrix();

  noStroke();
  fill(0, 255, 0);
  rect(0, 200, 50, 200);
  fill(0, 255, 0);
  rect(750, 200, 50, 200);

  sandbackground();
}

void sandbackground() {
  m = second()+1;
  tile = 10;

  if (m % 4 == 0) {
    for (int i=1; i<=width/tile; i++) {
      for (int m=1; m<=height/tile; m++) {
        pushMatrix();
        translate(10*i, 10*m);
        stroke(100);
        strokeWeight(4);
        point(random(0, 8), random(0, 8));
        popMatrix();
      }
    }
  }
}

void manual() {
  background(0);
  //backgroundline();
  mouseknife = new Knife();
  mouseknife.display(0, 0);


  alice.drawball(width/2, height/2, 0, 0);
  if (key == '1'||key == '2') {
    alice.shakingone(250, 8);
    alice.shakingone(150, 12);
    alice.shakingone(100, 18);
    alice.shakingone(50, 20);
  }
  
  if(key == '3'){
    background(0);
    mouseknife.display(0, 0);
  }
}

void automation() {
  background(0);
  weapon = new Weapon();
  alice.drawball(width/2, height/2, 0, 0);
 
  if(mousePressed == true){
  background(255);
  speed = random(0,40);
  weapon.spike(speed);
  frameRate(3);
  if (speed >=30) {
    frameRate(10);
    alice.shakingtwo(speed, 13);
  }
  else if (speed >=20 && speed <30) {
    frameRate(10);
    alice.shakingtwo(speed, 8);
  }
  else if (speed >=10 && speed <20) {
    frameRate(10);
    alice.shakingtwo(speed, 4);
  }
  else if (speed >=0 && speed <10) {
    frameRate(10);
    alice.shakingtwo(speed, 2);
  }
    
  } 
}

void locchange() {
  if (keyCode == UP) {
    yLoc -=2;
  }
  if (keyCode == DOWN) {
    yLoc +=2;
  }
  if (keyCode == LEFT) {
    xLoc -=2;
  }
  if (keyCode == RIGHT) {
    xLoc +=2;
  }
}
