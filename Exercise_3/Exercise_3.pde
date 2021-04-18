void parallelen() {
  for (int i=0; i<10; i++) {
    line(0, 5+i*40, 640, 5+i*40);
  }
}

void zeichneQuadrate() {
  fill(0);
  
  int s = 40;
  int[] abstaende = {10, 20, 30, 20, 10, 20, 30, 20, 10};
  
  for (int j=0; j<9; j++) {
    for (int i=0; i<8; i++) {
      rect(abstaende[j]+2*s*i, 5+j*s, s, s);
    }
  }
}

void setup() {
  size(640, 400);
  background(255);
  
  parallelen();
  zeichneQuadrate();
}
