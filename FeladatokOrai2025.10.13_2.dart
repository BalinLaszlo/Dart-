void main() {
  print('4 faktoriális: ${factorial(4)}');
  print('5 faktoriális: ${factorial(5)}');
  print('9 osztható 2-vel: ${isDivisible(9, 2)}');
  print('9 osztható 3-mal: ${isDivisible(9, 3)}');
  print('10 pontból 3 az ${percent(10, 3.333333)} %');
  print('100-ból 92 pont: ${grade(100, 92)}');
  print('100-ból 82 pont: ${grade(100, 82)}');
  print('100-ból 72 pont: ${grade(100, 72)}');
  print('100-ból 52 pont: ${grade(100, 52)}');
  print('100-ból 32 pont: ${grade(100, 32)}');
  print('100-ból -32 pont: ${grade(100, -32)}');
  print('AlmaFaKerites módosítva: ${vowelUpper('AlmaFaKerites')}');
  print('Az első 5 szám összege: ${gausSum(5)}');
  print('Az első 7 szám összege: ${gausSum(7)}');
  print('4 Gaus listája: ${gausList(4)}');
  print('8 Gaus listája: ${gausList(8)}');
}

List<int> gausList(int integer) {
  List<int> numbers = [1];
  for (int i = 2; i <= integer; i++) {
    numbers.add(numbers.last + i);
  }
  return numbers;
}

int gausSum(int integer) {
  return integer * (integer + 1) ~/ 2;
}

String vowelUpper(String text) {
  String result = "";
  String upper = text.toUpperCase();
  for (String letter in upper.split('')) {
    if ('AEIOU'.contains(letter)) {
      letter = letter.toLowerCase();
    }
    result += letter;
  }
  return result;
}

String grade(int total, int points) {
  double score = points / total * 100;
  if (score >= 90) {
    return 'A';
  }
  if (75 <= score && score < 90) {
    return 'B';
  }
  if (60 <= score && score < 75) {
    return 'C';
  }
  if (45 <= score && score < 60) {
    return 'D';
  }
  if (0 <= score && score < 45) {
    return 'E';
  }
  return 'Érvénytelen pontszám';
}

double percent(double total, double score) {
  double result = score / total * 100;
  return double.parse('${result.toStringAsFixed(2)}');
}

bool isDivisible(int integer1, int integer2) {
  if (integer1 % integer2 == 0) {
    return true;
  }
  return false;
}

int factorial(int integer) {
  int result = 1;
  for (int i = 1; i <= integer; i++) {
    result *= i;
  }
  return result;
}
