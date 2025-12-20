import "dart:io";


void createFile(String fileName) {
  File file = File(fileName);

  if (!file.existsSync()) {
    file.createSync();
    print('$fileName létrehozása sikeres.');
  } else {
    print('$fileName már létezik.');
  }
}


void deleteFile(String fileName) {
  File file = File(fileName);

  if (file.existsSync()) {
    file.deleteSync();
    print('$fileName törlés sikeres.');
  } else {
    print('$fileName nem létezik, törlése sikertelen.');
  }
}


List<String> readFile(String fileName) {
  return File(fileName).readAsLinesSync();
}


void printContent(List<String> content) {
  print('Nők:');
  for (var line in content) {
    if (line.contains(', female,')) {
      print(line);
    }
  }

  print('\nFérfiak:');
  for (var line in content) {
    if (line.contains(', male,')) {
      print(line);
    }
  }
}


void addNumbers(String fileName, List<int> numbersToAdd) {
  File file = File(fileName);
  String newLine = numbersToAdd.join(', ');
  file.writeAsStringSync('\n$newLine', mode: FileMode.append);
}


void printNumbers(List<String> fileContent) {
  List<int> numbers = [];

  for (var line in fileContent) {
    var parts = line.split(', ');
    for (var part in parts) {
      numbers.add(int.parse(part));
    }
  }

  numbers.sort();

  for (var number in numbers) {
    print(number);
  }
}

void main() {
  print('1. Feladat');
  createFile('players.txt');
  createFile('cars.txt');

  print('\n2. Feladat');
  deleteFile('players.txt');

  print('\n3. Feladat');
  List<String> employeesContent = readFile('employees.txt');
  printContent(employeesContent);

  print('\n4. Feladat');
  addNumbers('numbers.txt', [8, 0, 5, 1, 3, 2, 11, 19, 1]);
  List<String> numbersContent = readFile('numbers.txt');
  printNumbers(numbersContent);
}
