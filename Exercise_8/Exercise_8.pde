// Programm zur Darstellung eines Arrays als Balkendiagramm
// Autor: Thomas Schaller
// Version: 1.0 vom 12.02.2019


 // Liste mit allen Werten
int[]   zahlen={45, 23, 123, 87, 98, 2, 1, 23, 23, 34};    
 // Schriften
PFont kleineSchrift;  
PFont grosseSchrift;


public void setup() {
  size(1000, 700);
  background(0);
  kleineSchrift = loadFont("KleineSchrift.vlw");
  grosseSchrift = loadFont("GrosseSchrift.vlw");
  zeichneBalken();
}

void zeichneEinenBalken(int y, int i) {
  fill(#FFFFFF);
  text("i=" + i + "   zahlen[" + i + "]=" + zahlen[i], 10, y);
  fill(#0000FF);
  rect(200, y-10, zahlen[i], 10);
}

public void zeichneBalken() {

  clear();
  
  // Überschrift
  fill(255,255,255);
  textFont(grosseSchrift);
  text("Balkendiagramm", 2, 20);
  textFont(kleineSchrift);  
  
  for (int i=0; i<zahlen.length; i++) {
    zeichneEinenBalken(50+i*10, i);
  }
  
  // ----------------------------------------------------------------------
  // To Do
  // ----------------------------------------------------------------------
  // Version 1: 
  // Implementiere die ersten vier Balken durch Angabe der Koordinaten aus der Tabelle. 
  // Ergänze dazu die Methode zeicheBalken an der "ToDo"-Stelle.
  // Version 2:
  // Ersetze die y-Koordinate und die Breite durch die oben ermittelte Formel. 
  // Deklariere vorher eine Integer-Variable i. Setze i vor der ersten Rechteck 
  // auf 0, vor dem zweite auf 1 usw. Überprüfe, ob deine Rechtecke immer noch 
  // korrekt gezeichnet werden.
  // Version 3:
  // Verwende eine for-Schleife, um alle Balken zeichnen zu lassen. Diese muss das i
  // in jedem Durchgang um 1 erhöhen. Die Anzahl der Elemente im Array bekommst du 
  // durch zahlen.length.
  // Tipp: Vergleiche mit deiner Implementation von der Kaffeehaus-Täuschung.
 
}
