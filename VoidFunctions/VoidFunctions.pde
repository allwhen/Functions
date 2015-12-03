int c = 0; //click number

//blue square at center
void sqa() {
  colorMode(RGB);
  fill(0, 0, 255);
  rect(width/2-25, height/2-25, 50, 50);
}

//circle at cursor colored by clicks
void cir() {
  colorMode(HSB, 18);
  fill(c%18, 100, 100);
  ellipse(mouseX, mouseY, 30, 30);
}

void foot(int r) {
  for (int i = 1; i<=r; i++) {
    ellipse(mouseX, mouseY+4*i, 4, 4);
    ellipse(mouseX+4*i, mouseY, 4, 4);
    ellipse(mouseX+4*i, mouseY+4*i, 4, 4);
    
  }
}

void setup() {
  size(500, 500);
  noCursor();
}

void draw() {
  background(0);
  sqa();
  cir();
  if (keyPressed) {
    foot(5);
  }
}

void mouseClicked() {
  c+=1;
}