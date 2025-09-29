import 'dart:io';
import 'dart:math';

void main() {
  print("1. Feladat");
  print("Kérlek adj meg egy egész számot : ");

  int szam = int.parse(stdin.readLineSync()!);
  print("2.Feladat");
  if ((szam % 2) == 0) {
    print("A szám páros ");
  } else {
    print("A szám páratlan");
  }
  print("3.Feladat");
  if (szam == 1) {
    print("Elégtelen");
  } else if (szam == 2) {
    print("Elégseéges");
  } else if (szam == 3) {
    print("Közepes ");
  } else if (szam == 4) {
    print("Jó");
  } else if (szam == 5) {
    print("Kitünő");
  }
  print("4.Feladat");
  switch (szam) {
    case 1:
      print("Elégtelen");
      break;
    case 2:
      print("Elégséges");
      break;
    case 3:
      print("Közepes");
      break;
    case 4:
      print("Jó");
      break;
    default:
      print("Kitünő");
  }
  print("5.Feladat");
  print("Add meg az első számot:");
  int szam1 = int.parse(stdin.readLineSync()!);
  print("Add meg az második számot:");
  int szam2 = int.parse(stdin.readLineSync()!);
  if (szam1 > szam2) {
    print("${szam1} a nagyobb");
  } else {
    print("${szam2} a nagyobb");
  }
  print("6.Feladat");
// 6. Kérj be egy egész számot és írsd ki, hogy a szám:
// páros vagy páratlan
// pozitív szám, nulla, vagy negatív szám
// négyzetszám-e
  print("Add meg az első számot:");
  int szam3 = int.parse(stdin.readLineSync()!);
  if (szam3 % 2 == 0) {
    print("A szám páros");
  } else {
    print("A szám páratlan");
  }
  if (szam3 > 0) {
    print("A szám pozitic");
  } else if (szam < 0) {
    print("A szám negatív");
  } else {
    print("A szám 0.");
  }
  if (sqrt(szam3 * szam3) == szam3) {
    print("A szám négyzetszám");
  } else {
    print("Nem négyzetszám");
  }
  print("7.Feladat");
// Első szám össz pontszám.
// Második szám elért pont
// Kiszámolja az elért százalékot és visszaad egy amerikai értékelést:
// 90-től : A
// 80 - 90 : B
// 70 - 80 : C
// 60 - 70: D
// 50 - 60: E
// 0 - 50: F
  print("Add meg az összpont számot:");
  int szam4 = int.parse(stdin.readLineSync()!);
  print("Add meg az elért számot:");
  int szam5 = int.parse(stdin.readLineSync()!);
  double ossz = (szam5 / szam4) * 100;
  if (ossz >= 90) {
    print("A");
  } else if (ossz > 80 && ossz < 90) {
    print("B");
  } else if (ossz > 70 && ossz < 80) {
    print("C");
  } else if (ossz > 60 && ossz < 70) {
    print("D");
  } else if (ossz > 50 && ossz < 60) {
    print("E");
  } else {
    print("F");
  }
}
