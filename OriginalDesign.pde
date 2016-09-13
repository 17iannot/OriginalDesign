void setup()
{
  size(750,750);
}
void draw()
{
  noStroke();
  if (keyPressed == true) {
    fill(255,255,255);
    rect(0,0,750,750);
  } else {
    fill(255);
  }
  if (mousePressed == true) {
    frameRate(50);
    fill(0,0,0);
    rect(random(750),random(750),50,50);
  } else {
    frameRate(50);
    fill(random(300),random(300),random(300));
    ellipse(random(750),random(750),50,50);
    ellipse(random(750),random(750),50,50);
    ellipse(random(750),random(750),50,50);
  }
  if (mousePressed == true) {
    fill(360,360,360);
    ellipse(mouseX,mouseY,50,50);
  } else {
    fill(0,0,0);
    ellipse(mouseX,mouseY,50,50);
  }
}

