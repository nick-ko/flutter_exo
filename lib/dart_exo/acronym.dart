import 'dart:io';

class Acronym {

  String abbreviate(String toAbbreviate) =>
      toAbbreviate.split(" ").map((word) => word[0]).join('').toUpperCase();
}

main() {

  stdout.writeln("ENTREZ UNE PHRASE SVP ?");
  String toAbbreviate=stdin.readLineSync();


    print(Acronym().abbreviate(toAbbreviate));
  
}

 