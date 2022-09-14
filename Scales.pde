void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}

int r = 0; //controls red values for color.
int g = 0; //controls green values for color.
int b = 0; //controls blue values for color.
boolean os = false; //controls the if the offset is true or false.

void draw() {//This draws the scale.
  for (int y = -30; y < 471; y+=50) {//y loop
    for (int x = 6; x < 507; x+=50) {//x loop
      if (os == true) {//offset true
        randomColor();
        scale(x-25, y);
      } else { //offset false
        randomColor();
        scale(x, y);
      }
    }//x loop
    if (os == true) {//offset true becomes false.
      os = false;
    } else {//offset false becomes true.
      os = true;
    }
  }//y loop
}
void scale(int x, int y) {//This creates the shape of my scale.
  fill(r, g, b);
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

void randomColor() { //Makes a random color.
  r = ((int)(Math.random() * 256));  
  g = ((int)(Math.random() * 256));
  b = ((int)(Math.random() * 256));
}
