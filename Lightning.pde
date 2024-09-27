int startX =500;
int startY = 250;
int endX = 500;
int endY = 250;

void setup() {
  size (1000, 1000);
  background(40);
}


void draw() {

  lightning();
  cloud();
}

void lightning() {
  strokeWeight(5);
  stroke(255, 255 - (int)((Math.random()*20)), 255 - (int)((Math.random()*100)));
  while (endX <= 1000) {
    endX = startX + (int)((Math.random()*20)-10);
    endY = startY + (int)(Math.random()*10);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void cloud() {
  noStroke();
  fill(120);
  ellipse(300, 200, 300, 200);
  ellipse(500, 200, 450, 300);
  ellipse(700, 200, 300, 200);
}

void mousePressed() {
  startX = 500;
  startY = 250;
  endX = 500;
  endY = 250;
  redraw();
}
