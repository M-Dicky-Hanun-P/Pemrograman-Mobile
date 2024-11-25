void main(List<String> arguments) {
// Praktikum 1 Langkah 1
  // String test = "test2";
  // if (test == "test1") {
  //   print("Test1");
  // } else if (test == "test2") {
  //   print("Test2");
  // } else {
  //   print("Something else");
  // }
  // if (test == "test2") print("Test2 again");

// Praktikum 1 Langkah 3
  // String test = "true";
  // if(test == "true") {
  //   print("Kebenaran");
  // }

// Praktikum 2 Langkah 1
  // int counter = 70;

  //   while (counter < 33){
  //     print(counter);
  //     counter++;
  //   }
  // }

// Praktikum 2 Langkah 3
  //   do {
  //     print(counter);
  //     counter++;
  //   } while (counter < 77);

// Praktikum 3 Langkah 1
  // for (int i = 10; i < 27; i++){
  //   print(i);
  // }

// Praktikum 3 Langkah 3
  // for (int i = 20; i >= 1; i--) {
  //   if (i == 21) {
  //     break;
  //   } else if (i > 1 && i < 7) {
  //     continue;
  //   }
  //   print(i);
  // }

// Tugas Praktikum
    for (int i = 2; i <= 201; i++) {
      if (prima(i)) {
        print("Bilangan Prima: $i\n");
        print("Nama Lengkap: Mochammad Dicky Hanun Prasetyo | NIM: 2241760023");
      }
    }
  }

  bool prima(int num) {
    for (int i = 2; i <= num ~/ 2; i += 1) {
      if (num % i == 0) {
        return false;
      }
    }
    return true;
}
