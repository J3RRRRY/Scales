void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}

int randomX = 0;
int randomY = 0;

void draw() {
  for(int i = 0; i < 100; i++) {
  randomNum();
  scale(randomX, randomY);
  }
}
void scale(int x, int y) {
  fill(0, 255, 0);
  beginShape();
  curveVertex(x, y + 40);
  curveVertex(x, y + 40);
  curveVertex(x + 25, y + 55);
  curveVertex(x + 50, y + 40);
  curveVertex(x + 50, y + 40);
  vertex(x + 60, y);
  vertex(x + 25, y - 25);
  vertex(x - 10, y);
  vertex(x, y + 40);
  endShape();
}

void randomNum() {
  randomX = ((int)(Math.random() * 500));  
  System.out.println(randomX);
  randomY = ((int)(Math.random() * 500));  
  System.out.println(randomY);
}
  
/*
  beginShape();
  curveVertex(x, y + 80);
  curveVertex(x, y + 80);
  curveVertex(x + 50, y + 110);
  curveVertex(x + 100, y + 80);
  curveVertex(x + 100, y + 80);
  vertex(x + 120, y);
  vertex(x + 50, y - 50);
  vertex(x - 20, y);
  vertex(x, y + 80);
  endShape();
  */
  
  
