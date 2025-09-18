// Feladat:
// 1. Írad ki az iskola nevét!

// 2. Hozd létre változókat az irányítószámnak, utcának, településnek, házszámnak!
// Majd ezek felhasználásával írask ki az iskola nevét és címét!

// 3. Számold ki és írasd ki az évfolyamok létszámát!
// 9. évfolyamon 4 osztály van, a többi évfolyamon 3. Az osztályok átlagos létszáma 28 fő.
void main() {
  print("Szegedi SZC Vasvári Pál Gazdasági és Informatikai Technikum");

  int iranyitoSzam = 6722;
  String utca = " Gutenberg u.";
  String telepules = "Szeged";
  int hazSzam = 11;
  print(iranyitoSzam.toString() + " " + telepules + utca + hazSzam.toString());

  int kilenc = 4;
  int tiz = 3;
  int tizenegy = 3;
  int tizenketto = 3;
  double osszesen = (kilenc + tiz + tizenegy + tizenketto) * 28;
  int atlag = 28;
  print("Ennyi gyerek jár az évfolyamokba összesen :" + osszesen.toString());
  print("A 9.be ${kilenc * 28} gyermek jár.");
  print("A 10.be ${tiz * 28} gyermek jár.");
  print("A 11.be ${tizenegy * 28} gyermek jár.");
  print("A 12.be ${tizenketto * 28} gyermek jár.");
  print("Az osztályonkénti átlaguk:$atlag");
}
