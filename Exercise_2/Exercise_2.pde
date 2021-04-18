
void zeichneBildC() {
  // Zeichne dir zunächst eine Skizze auf ein Blatt Papier und überlege dir, welche
  // Werte du den Methoden rect(x,y,b,h) und ellipse(x,y,b,h) übergeben musst, 
  // dass Bild C gezeichnet wird

  // ***** hier kommen deine Anweisungen hin ************
  
  rect(10, 10, 230, 230);
  for (int i=0; i<3; i++) {
    ellipse(125, 125, 200-i*20, 200-i*20);
  }
  
  ellipse(125, 125, 200, 200);
  ellipse(125, 125, 160, 160);
  ellipse(125, 125, 120, 120);
  
  ellipse(125, 370, 230, 230);
  for (int i=0; i<3; i++) {
    rect(50+i*20, 295+i*20, 150-i*40, 150-i*40);
  }
  
  // ***** Ende der eigenen Anweisungen **********
}

void zeichneQuadrate(int anzahl) {
  for (int i=0; i<anzahl; i++) {
    rect(10+i*30, 10, 30, 30);
  }
}

void zeichneKreise(int anzahl) {
  for (int i=0; i<anzahl; i++) {
    ellipse(250, 250, 490-i*25, 490-i*25);
  }
}

void setup() {
  //size(320, 50); // Festlegen der Fenstergröße fuer die Quadrate
  size(500, 500); // Festlegen der Fenstergröße fuer die Kreise
  //size(250, 500); // Festlegen der Fenstergröße fuer Bild C
  //zeichneBildC(); // Aufruf deiner Methode
  //zeichneQuadrate(10);
  zeichneKreise(20);
}
