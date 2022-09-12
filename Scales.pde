void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  scale(100, 100);
}
void scale(int x, int y) {
  beginShape();
  vertex(x, y + 100);
  vertex(x + 100, y + 100);
   vertex(x + 120, y);
  endShape();
}
