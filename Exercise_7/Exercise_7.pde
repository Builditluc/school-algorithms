void zeichneHintergrund() {
  noStroke();
  int farbe = #800080;
  
  for (int j=0; j<13; j++) {
    for (int i=0; i<13; i++) {
      fill(farbe);
      rect(0+i*50, 0+j*50, 50, 50);
      
      if (farbe == #800080) {
        farbe = #9a009a;
      } else {
        farbe = #800080;
      }
    }
  }
}

void zeichneQuadrat(int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4, boolean farbe) {
  quad(x1, y1, x2, y2, x3, y3, x4, y4);
}

void rauten(){
  int farbe_raute = 0;
  for (int j=0;j<6; j++){
    for (int i=0; i<6; i++){
      vier_rauten(farbe_raute, (i+1)*50, (j+1)*50);
      vier_rauten(farbe_raute, (12-i)*50, (j+1)*50);
      vier_rauten(farbe_raute, (i+1)*50, (12-j)*50);
      vier_rauten(farbe_raute, (12-i)*50, (12-j)*50);
      farbe_raute = 255 - farbe_raute;
    }
    farbe_raute = 255 - farbe_raute;
  }

}

void vier_rauten(int farbe, int x_m, int y_m) {
  int a = 8;
  noStroke();
  fill(farbe);
  quad(x_m-a, y_m, x_m - a/2, y_m-a/2, x_m, y_m, x_m - a/2, y_m+a/2);
  fill(255-farbe);
  quad(x_m, y_m, x_m - a/2, y_m + a/2, x_m, y_m + a, x_m + a/2, y_m + a/2);
  fill(farbe);
  quad(x_m, y_m, x_m + a/2, y_m + a/2, x_m + a, y_m, x_m + a/2, y_m - a/2);
  fill(255-farbe);
  quad(x_m, y_m, x_m - a/2, y_m - a/2, x_m, y_m - a, x_m + a/2, y_m - a/2);
}

void setup() {
  size(650, 650);
  zeichneHintergrund();
  rauten();
}
