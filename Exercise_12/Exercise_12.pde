/**
 * Automatische Zeitungsmeldung mit Maximum und Durchschnitt, Zahlen werden aus CSV-Datei gelesen.
 * 
 * @author Schaller 
 * @version 29.11.18
 */
 
// Liste mit allen Werten
int[]    punkte;    
String[] namen;

// Schriften
PFont kleineSchrift;  
PFont grosseSchrift;


public void setup() {
  // Zeichenfläche erzeugen
  size(1000, 700);
  background(0);
  // Schriften laden
  kleineSchrift = loadFont("KleineSchrift.vlw");
  grosseSchrift = loadFont("GrosseSchrift.vlw");

  // CSV-Datei laden und anzeigen
  ladeTabelle("punkte.csv");
  int summe = berechneSumme(punkte);
  System.out.println("Summe: "+summe);
  schreibeZeitungsmeldung();
}

public void ladeTabelle(String name) {
  // Tabelle aus CSV-Datei laden
  Table csv = loadTable(name, "header,csv");

  if (csv != null  && csv.getColumnCount()==2) {

    // Initialisiere Arrays, in die alle Zeilen der Tabelle passen
    punkte = new int[csv.getRowCount()];
    namen = new String[csv.getRowCount()];

    // Fülle die Arrays mit Werten aus der Tabelle
    for (int i = 0; i < punkte.length; i++) {
      // Lies Wert aus der i. Zeile und der Spalte "Punkte" bzw. "Name"
      punkte[i] = csv.getInt(i, "Punkte");
      namen[i] = csv.getString(i, "Name");
    }
  }
}

public void schreibeZeitungsmeldung() {

  clear();

  // Überschrift
  fill(225,225,255);
  stroke(155,155,255);
  textFont(grosseSchrift);
  text("BREAKING NEWS",5,32);
  strokeWeight(3);
  line(2,4,400,4);
  line(2,45,400,45);
  strokeWeight(2);
  line(2,7,400,7);
  line(2,42,400,42);
  strokeWeight(1);
  textFont(kleineSchrift); 
  fill(240);
  
  int anzahlSpieler   = anzahlSpieler(namen);
  int anzahlSpiele    = punkte.length;
  int summe           = berechneSumme(punkte);
  double durchschnitt = berechneDurchschnitt(punkte);
  
  text("Großartiges Ergebnis - Klasse XY nimmt an Binärwettbewerb teil.", 2, 60);
  text("Die Klasse XY hat beim diesjährigen Binärwettbewerb teilgenommen", 2, 82);
  text("und ein großartiges Ergebnis erzielt. Die "+anzahlSpieler+" Schülerinnen und", 2, 94);
  text("Schüler der Klasse erreichten in "+anzahlSpiele+" Spielen eine Gesamtpunktzahl",2,106);
  text("von "+summe+". Das ist ein Durchschnitt von "+durchschnitt+" pro Spiel.",2,118);

}

public int berechneSumme(int[] zahlen) {
  int summe;
  
  // Startwerte setzen
  summe = 0;
  
  // Alle Arrayelemente untersuchen
  for (int i=0; i< zahlen.length; i++) {
    summe += zahlen[i]; // Fehler, hier sollte der wert der zahlen hinzugefuegt werden, nicht der index im array
  }
  
  // Gib die Summe zurück
  return summe; // Fehler, summe sollte zurueckgegeben werden
}

double berechneDurchschnitt(int[] zahlen) {
  double durchschnitt = (double)berechneSumme(zahlen)/zahlen.length;
  return durchschnitt;
}

int anzahlSpieler(String[] namen) {
  int anzahl = 0;
  boolean gefunden;
  
  for (int i=0; i<namen.length; i++) {
    gefunden = false;
    for (int j=0; j<i; j++) {
      if (namen[i].equals(namen[j])) {
        gefunden = true;
      }
    }
    
    if (gefunden == false) {
      anzahl += 1;
    }
  }
  
  return anzahl;
}
