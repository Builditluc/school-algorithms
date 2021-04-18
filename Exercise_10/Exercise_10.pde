/**
 * Balkendiagramm für int-Array, Zahlen werden aus CSV-Datei gelesen.
 * 
 * @author Schaller 
 * @version 29.11.18
 */

// Liste mit allen Werten 
// Deklariere ein Array zahlen für die Punkte und ein Array namen für die Spielernamen
//------------
// TODO
//------------
String[] namen;
int[] punkte;
 
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
  zeichneBalken();
}


public void ladeTabelle(String name) {
  // Tabelle aus CSV-Datei laden
  Table csv = loadTable(name,"header,csv");
  
  if (csv == null) {
    return; 
  }
  
  // Initialisiere Arrays, in die alle Zeilen der Tabelle passen
  // Die Anzahl der gespeicherten Zeilen bekommt man mit csv.getRowCount()
  //------------
  // TODO
  //------------
  namen = new String[csv.getRowCount()];
  punkte = new int[csv.getRowCount()];
  
  // Fülle die Arrays mit Werten aus der Tabelle
  // Mit csv.getInt(zeilennummer, "Name der Spalte") oder csv.getInt(zeilennummer, spaltennummer)
  // bekommt man die Werte der Tabelleneinträge als Integer-Wert
  // Informiere dich unter https://processing.org/reference/Table.html, welche Methode geeignet ist,
  // um die Namen der Spieler als String zu bekommen. getInt hilft hier nicht weiter.
  //------------
  // TODO
  //------------  
  for (int i=0; i<csv.getRowCount(); i++) {
    namen[i] = csv.getString(i, 0);
  }
  
  for (int i=0; i<csv.getRowCount(); i++) {
    punkte[i] = csv.getInt(i, 1);
  }
}
  

public void zeichneBalken() {

  clear();
  
  // Überschrift
  fill(255,255,255);
  textFont(grosseSchrift);
  text("Punkte", 2, 20);
  textFont(kleineSchrift);  

  // Alle Einträge darstellen
  // lasse alle Ergebnisse der Spieler in der Form
  // SpielerXY  234 XXXXXXXXXXXXXXXX
  // SpielerZY  12  XX
  // usw.
  // darstellen. Wandle dazu dein Programm, um die Werte eines Arrays darzustelle ab.
  //------------
  // TODO
  //------------
  if(punkte == null) {
    return;
  }
  
  for (int i=0; i<namen.length; i++) {
    fill(#FFFFFF);
    text(namen[i], 2, 35+i*15);
    text(punkte[i], 60, 35+i*15);
    
    fill(20, 30, 170);
    rect(120, 25+i*15, punkte[i]+1, 13);
  }
}
