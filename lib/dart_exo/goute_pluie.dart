import 'dart:io';


main(List<String> args) {
  stdout.writeln("ENTREZ UN NOMBRE SVP ?");
  var number=stdin.readLineSync();
  var goute = int.parse(number);

  print(Raindrops().convert(goute));
  
}

class Raindrops {
  String convert(int n) {
    String res = '';
    Map<int, String> pluie = { 3: 'Pling', 5: 'Plang', 7: 'Plong'};
    pluie.forEach((k, v) => n % k == 0 ? res += v : null);
    return res != '' ? res : n.toString();
  }
}