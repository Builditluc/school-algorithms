
void zeichneBildC() {
  // Zeichne dir zunächst eine Skizze auf ein Blatt Papier und überlege dir, welche
  // Werte du den Methoden rect(x,y,b,h) und ellipse(x,y,b,h) übergeben musst, 
  // dass Bild C gezeichnet wird

  // ***** hier kommen deine Anweisungen hin ************
  
  rect(10, 10, 230, 230);
  ellipse(125, 125, 200, 200);
  ellipse(125, 125, 160, 160);
  ellipse(125, 125, 120, 120);
  
  ellipse(125, 370, 230, 230);
  rect(50, 295, 150, 150);
  rect(70, 315, 110, 110);
  rect(90, 335, 70, 70);
  
  // ***** Ende der eigenen Anweisungen **********
}


//***** Zusatzaufgabe bzw. Hausaufgabe *************
void zeichneBildA() {
  // ***** hier kommen deine Anweisungen hin ************

  ellipse(125, 105, 200, 200);
  rect(25, 205, 200, 200);
  triangle(125, 405, 25, 575, 225, 575);

  // ***** Ende der eigenen Anweisungen **********  
 
}


void setup() {
  //size(250, 500); // Festlegen der Fenstergröße
  size(250, 600); // Festlegen der Fenstergroesse fuer Bild A
  //zeichneBildC(); // Aufruf deiner Methode
  zeichneBildA();
}
