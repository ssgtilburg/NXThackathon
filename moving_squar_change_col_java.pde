float x = 100;
float y = 100;

float xSpeed = 0;
float ySpeed = 0;

boolean keyLeft, keyRight, keyUp, keyDown;

void setup() {
  size(600, 400);
  background(0);
}

void draw() {

  rect(x, y, 10, 10);
  
  countSpeed();   //Change speed based on current keys pressed.
  changePosition(); //Change position based on speed.
  
  xSpeed *= 0.9; //Apply some drag so that the square wouldn't fly off the screen indefinitely
  ySpeed *= 0.9;
  
}


void countSpeed(){
  if(keyLeft) xSpeed-= 0.5;
  if(keyRight) xSpeed+= 0.5;
  if(keyUp) ySpeed-= 0.5;
  if(keyDown) ySpeed+= 0.5;
}

void changePosition(){
  x+=xSpeed;
  y+=ySpeed;
}




void keyPressed() {
//  if (key == CODED) {
    if (keyCode == UP) {
      keyUp = true;
    }
    if (keyCode == DOWN) {
      keyDown = true;
    }
    if (keyCode == LEFT) {
      keyLeft = true;
    }
    if (keyCode == RIGHT) {
      keyRight = true;
    }
    if (key == 'B'){
      fill(0,0, 250);
    }
    if (key == 'H'){
      fill(231,178,255);
    }
    if (key == 'N'){
      fill(255,255,255);
    }
//  }
}
void keyReleased() {
//  if (key == CODED) {
    if (keyCode == UP) {
      keyUp = false;
    }
    if (keyCode == DOWN) {
      keyDown = false;
    }
    if (keyCode == LEFT) {
      keyLeft = false;
    }
    if (keyCode == RIGHT) {
      keyRight = false;
    }
//  }
}
