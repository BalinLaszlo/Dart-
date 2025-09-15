import 'dart:math';
import 'dart:io';

void main(){

  print('Szia Laci vagyok ! ');
  print('Kiiratás aposztróffal.');
  print('''
Egyszer volt
hol nem volt

Még nyílnak a völgyben
a kerti virágok...
''');
  // print('Ez a sor megjegyzésbe kerül');
  var nev="Adam Family";
  print(nev);
  print("A megadott név: $nev");
  print("A megadott név hossza : ${nev.length}");
  String fname='Joe';
  String lname='Doe';
  print('Your full name is a $fname $lname');
  int egesz=12;
  double tizedes =3.1415926;
  bool logikai=true;
  print('Az egész szám: $egesz');
  print('A pi:$tizedes');
  print('A logikai érték_$logikai');
  dynamic valami="egy";
  print(valami);
  valami=1;
  print(valami);
  String teljesNev="Bálint László";
  print("Enter name ");
  String? myname=stdin.readLineSync();
  // Bekérek vele valamit 
  print('User name:${myname}');
  






}