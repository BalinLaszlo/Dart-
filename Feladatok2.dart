import  'dart:io';

void main(){



// while és do while ciklusok, break és continue
// Feladat:

// 1. birthdaySong.dart
// Kérj be egy számot a felhasználótól (1 és 100 között).
// Írasd ki a következő sorokat egymás után, annyiszor, amennyit a felhasználó megadott:
// "Happy birthday!
// "Happy birthday to you!".
print("Kérlek adj meg egy  egész számot 1 és 100 között:");
int szam =int.parse(stdin.readLineSync()!);
while(szam>0){
print('''Happy birthday!,
 "Happy birthday to you!''');
 szam--;

}

// 2. whileInnerLoop.dart
// A felhasználótól kérj be egy 3 és 9 közötti számot!
// Indíts egy dupla ciklust 0-tól 10-ig és írasd ki a számokat.
// I. Ha a belső ciklus elérte a felhasználó által megadott számot, akkor lépjen ki a belső ciklusból.
// II. Ha a küldő ciklus elérte a felhasználó által megadott számot, akkor lépjen ki a külső ciklusból.
  print("Adj meg egy egész számot 3 és 9 között:");
  int szam2 = int.parse(stdin.readLineSync()!);

  int i = 0;
  while (i <= 10) {
    if (i == szam2) {
      print("A külső ciklus elérte az értéket, kilépés.");
      break;
    }

    int j = 0;
    while (j <= 10) {
      if (j == szam2) {
        print("A belső ciklus elérte az értéket, kilépés.");
        break;
      }
      
      j++;
    }

    i++;
  }



// 3. whileFibonacci.dart
// While ciklus használatával írasd ki 100-ig a Fibonacci számokat!
int elso=0;
int masodik=1;

while(elso<=100){
  print("Fibonacci szám:${elso}");
  int kovi=elso+masodik;
  elso=masodik;
  masodik=kovi;

}

// 4. noFizzBuzzNumbers.dart
// 1-től 100-ig írd ki a számokat az alábbiak szerint:
// Ha a szám nem osztható sem 3-mal, sem 5-tel,, akkor írasd ki a számot.
// Ha a szám osztható 3-mal vagy 5-tel, akkor ne írjon ki semmit.
// A feladatban használd a continue utasítást és while vagy do while ciklust hasznájl!
int oszthato=1;
while(oszthato<=100){
  if(oszthato%3==0 || oszthato%5==0){

  
     oszthato++;
     continue;
     
    }
    print("$oszthato");
    oszthato++;
}
while(oszthato<100){
  if(oszthato%3==0 && oszthato%5==0){

  
     oszthato++;
     continue;
     
    }
    print("$oszthato");
    oszthato++;
}

// Tipp:
// cimke használata a cikus előtt.
// Pl.:
// outerLoop: // címke a külső ciklusra
// for (int i = 0; i < 5; i++) {
//   for (int j = 0; j < 5; j++) {
//     if (i == 2 && j == 3) {
//       break outerLoop; // kilép a külső ciklusból
//     }
//     print('i = $i, j = $j');
//   }
}











