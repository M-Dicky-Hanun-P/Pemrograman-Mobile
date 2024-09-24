void main(List<String> arguments) {
// Praktikum 1
  // var list = [1 , 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  // final List<dynamic> list = List.filled(5, null);

  // list[1] = "Mochammad Dicky Hanun Prasetyo";
  // list[2] = "2241760023";

  // print(list);

// Praktikum 2
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  // var names1 = <String>{};
  // Set<String> names2 = {};
  // // var names3 = {};

  // names1.add("Mochammad Dicky Hanun Prasetyo");
  // names1.add("2241760023");

  // names2.addAll({"Mochammad Dicky Hanun Prasertyo", "2241760023"});

  // print(names1);
  // print(names2);
  // // print(names3);

  // Praktikum 3
  // var gifts = {
  //   // Key: Value
  //   'first': 'partridge',
  //   'second': 'turtledoves',
  //   'fifth': 'golden rings',
  //   'name': 'Mochammad Dicky Hanun Prasetyo',
  //   'NIM': '2241760023',
  // };

  // var nobleGases = {
  //   2: 'helium',
  //   10: 'neon',
  //   18: 'argon',
  //   36: 'Mochammad Dicky Hanun Prasetyo',
  //   99: '2241760023',
  // };

  // print(gifts);
  // print(nobleGases);

  // var mhs1 = Map<String, String>();
  // mhs1['first'] = 'Mochammad Dicky Hanun Prasetyo';
  // mhs1['second'] = '2241760023';

  // var mhs2 = Map<int, String>();
  // mhs2[1] = 'Mochammad Dicky Hanun Prasetyo';
  // mhs2[2] = '2241760023';

  // print(mhs1);
  // print(mhs2);

  // Praktikum 4
  // var list1 = [1, 2, 3];
  // var list2 = [0, 10, 11];
  // print(list1);
  // print(list2);
  // print(list2.length);

  // list1 = [1, 2, 3];
  // print(list1);
  // var list3 = [0, ...list1];
  // print(list3.length);

  // var nim = [2, 2, 4, 1, 7, 6, 0, 0, 2, 3];
  // var list4 = [list1, ...nim];

  // print(list4);
  // print(list4.length);

  // bool promoActive = true;
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  // String login = 'Home';
  // var nav2 = [
  //   'Home',
  //   'Furniture',
  //   'Plants',
  //   if (login case 'Manager') 'Inventory'
  // ];
  // print(nav2);

  // var listOfInts = [1, 2, 3];
  // var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  // assert(listOfStrings[1] == '#1');
  // print(listOfStrings);

  // Praktikum 5
  //   var record = ('first', a: 2, b: true, 'last');
  //   print(record);

  //   (int, int) tukar((int, int) record) {
  //   var (a, b) = record;
  //   return (b, a);
  // }
  //   var ori = (1, 2);
  //   var swap = tukar(ori);
  //   print(swap);

  // var mahasiswa = ('Mochammad Dicky Hanun Prasetyo', 2241760023);
  // print(mahasiswa);

  var mahasiswa2 = ('Mochammad Dicky Hanun Prasetyo', a: 2241760023, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
