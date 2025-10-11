import 'dart:io';
import 'dart:math';

void main() {
  // Feladat:
  // 1. Kérj be két (legfeljebb kétjegyű) egész számot!
  // A kisebbtől a nagyobbik írasd ki a számokat és írd mellé, hogy páros, vagy páratlan a szám.
  print("Kérlek adj meg az első egész legfeljebb kátjegyű egész számot:");
  int elso = int.parse(stdin.readLineSync()!);
  print("Kérlek adj meg a második egész legfeljebb kátjegyű egész számot:");
  int masodik = int.parse(stdin.readLineSync()!);
  int kisebb = elso < masodik ? elso : masodik;
  int nagyobb = elso > masodik ? elso : masodik;
  for (int i = kisebb; i <= nagyobb; i++) {
    if (i % 2 == 0) {
      print("${i} és páros");
    } else {
      print("${i} és páratlan");
    }
  }

  // 2. Az alábbi lista elemeinek indexét és értékét írasd ki!
  List<String> uefa2024euro = [
    "Spain",
    "Germany",
    "Portugal",
    "France",
    "Netherlands",
    "Turkey",
    "England",
    "Switzerland",
  ];
  for (int i = 0; i < uefa2024euro.length; i++) {
    print("${i}:${uefa2024euro[i]}");
  }
  for (var nev in uefa2024euro) {
    print("${uefa2024euro.indexOf(nev)} ${nev}");
  }

  // 3. Az előző listát írasd ki, hogy ki-kivel játszik.
  // Ha például szerepel a Spain - Germany a kiíratásban, akkor a Germany - Spain ne legyen benne.
  uefa2024euro.asMap().forEach((i, nevek) {
    uefa2024euro.asMap().forEach((j, nevek1) {
      if (i < j) {
        print("${nevek}- ${nevek1}");
      }
    });
  });

  // 4. Kérj be egy számot és írasd ki a szám számjegyeinek átlagát két tizedes pontossággal.
  print("Adj meg egy legalább 2 számjegyű számot ");
  int szam = int.parse(stdin.readLineSync()!);
  List<int> szamlista = szam
      .toString()
      .split('')
      .map((e) => int.parse(e))
      .toList();

  double atlag = szamlista.reduce((a, b) => a + b) / szamlista.length;
  print("A megjelenített számjegyek : ${szamlista}");
  print(atlag.toStringAsFixed(2));

  // 5. Kérj be egy számot és írasd ki a szám számjegyeinek négyzetét.
  List<int> negyzet = szamlista.map((a) => a * a).toList();
  print('A számok négyzeteinek eredmény:${negyzet}');

  // 6. Kérj be egy szöveget és írd ki a szöveget magánhangzók nélkül.
  print("Adj meg kérlek egy szót.");

  String szoveg = stdin.readLineSync()!;
  String maganhagzokNelkul = szoveg.replaceAll(
    RegExp(r'[euioőúöüóaéáűíEUIOŐÖÜÓÚŰÁÉAÍ]'),
    '',
  );
  print(maganhagzokNelkul);

  // 7. Kérj be egy szöveget és írd ki a szöveget betűnként az alábbi formában:
  // (betű, a betű ASCI kódja)
  print("Adj meg egy szöveget megint kérlek");
  String szoveg1 = stdin.readLineSync()!;
  int eredmeny = szoveg1.codeUnitAt(0);
  print(eredmeny);
  for (int i = 0; i < szoveg1.length; i++) {
    stdout.write(szoveg1.codeUnitAt(i));
  }

  // 8. Kérj be egy számot és addig a számig írasd ki a FizzBuzz feladat megoldását!
  // FizzBuzz feladat:
  // Ha a szám osztható 3-mal, akkor a szám helyett kiírod, hogy Fizz
  // Ha a szám osztható 5-tel, akkor a szám helyett kiírod, hogy Buzz
  // Ha a szám osztható 3-mal és 5-tel is, akkor a szám helyet kiírod, hogy FizzBuzz
  // Ha aszám nem osztható sem 3-mal, sem 5-tel, akkor kiírod a számot.
  print('Adj meg kérlek egy számot :');
  int beker = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= beker; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print('FizzBuzz');
    } else if (i % 3 == 0) {
      print('Fizz');
    } else if (i % 5 == 0) {
      print('Buzz');
    } else {
      print(i);
    }
  }

  // Szorgalmi feladatok:
  // 9. Indíts két egymásba ágyazott ciklust 1-től 6-ig.
  // Ha a két ciklusváltozó szorzata 9, akkor a belső ciklusból llépjen ki (break).
  int szam2 = 6;

  for (int i = 0; i <= szam2; i++) {
    for (int j = 0; j <= szam2; j++) {
      if (i * j == 9) {
        print("Kilépek a belső ciklusból, mert i*j=9");
        break;
      }
      print("$i * $j = ${i * j}");
    }
  }

  // 10. Indíts két egymásba ágyazott ciklust 1-től 6-ig.Ha a két ciklusváltozó szorzata 9, akkor a külső ciklusból llépjen ki (break).
  int szam1 = 6;
  outerloop:
  for (int i = 0; i <= szam1; i++) {
    for (int j = 0; j <= szam1; j++) {
      if (i * j == 9) {
        print("Kilépek a belső ciklusból, mert i*j=9");
        break outerloop;
      }
      print("$i * $j = ${i * j}");
      print("Kilépek a külső ciklusból, mert i*j=9");
    }
  }
}
