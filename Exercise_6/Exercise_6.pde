void viereck(int farbe, int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4) {
  fill(farbe);
  stroke(farbe);
  quad(x1, y1, x2, y2, x3, y3, x4, y4);
}

void zeichneVierecke(int blau, int gruen, int x, int y, int horizontal, int vertical) {
  viereck(blau, x,y,x+ horizontal/2,y+vertical/2,x+horizontal/2,y+3*vertical/2,x,y+vertical);
  viereck(gruen, x+ horizontal/2,y+vertical/2,x+horizontal/2,y+3*vertical/2,x+horizontal,y+vertical,x+horizontal,y);
}

void zeichneIllusion() {
  int x = 0;
  int y = 0;
  int blau = #0000FF;
  int gruen = #00FF00;
  boolean ungerade = true;
  
  int horizontal = 60;
  int vertical = 35;
  
  while (y <= 500) {
    while (x <= 500) {
      zeichneVierecke(blau, gruen, x, y, horizontal, vertical);
      x += horizontal;
    }
    if (ungerade == true){
      ungerade = false;
      x = -horizontal/2;
    } else {
      ungerade = true;
      x = 0;
    }
    y += 3*vertical/2;
  }
}

void setup() {
  size(500, 500);
  background(150);
  zeichneIllusion();
}
