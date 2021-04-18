void zeichneQuadrat(int x, int y, int farbe, boolean links) {
  int s = 50;
  noStroke();

  
  fill(farbe);
  rect(x, y, s, s);
  
  if (farbe == 255) {
    fill(0);
  } else {
    fill(255);
  }
  
  ellipseMode(CORNERS);
  int d = s/4;
  if (links) {
    ellipse(x, y, x+d, y+d);
    ellipse(x, y+3*d, x+d, y+s);
  } else {
    ellipse(x+3*d, y, x+s, y+d);
    ellipse(x+3*d, y+3*d, x+s, y+s);
  }
}

void alleQuadrate() {
  int aktuelleFarbe = 255;
  boolean kreise_links = true;
  
  for (int j=0; j<4; j++) {
    for (int i=0; i<8; i++) {
      zeichneQuadrat(20+i*50, 20+j*50, aktuelleFarbe, kreise_links);
      if (aktuelleFarbe==255) {
        aktuelleFarbe = 0;
      } else {
        aktuelleFarbe = 255;
      }
    }
    if (aktuelleFarbe==255) {
      aktuelleFarbe = 0;
    } else {
      aktuelleFarbe = 255;
    }
    if (kreise_links) {
      kreise_links = false;
    } else {
      kreise_links = true;
    }
  }
}

void setup() {
  size(440, 240);
  alleQuadrate();
}
