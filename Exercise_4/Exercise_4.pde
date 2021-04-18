void zeichneGitter() {
  fill(0);
  int s = 50;
  int a = 25;
  
  for (int j=0; j<7; j++) {
    for (int i=0; i<7; i++) {
      rect(0+i*s+i*a, 0+j*s+j*a, s, s);
    }
  }
}

void setup() {
  size(500, 500);
  background(255);
  
  zeichneGitter();
}
