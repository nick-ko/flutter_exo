import 'dart:math';
import 'dart:io';

void main() {

  stdout.writeln("ENTREZ UN NOMBRE SVP ?");
  var number=stdin.readLineSync();
  var one = int.parse(number);


  print(ArmstrongNumbers().isArmstrongNumber(one));
}

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    int length = (number.toString().length);
    List<String> numList = number.toString().split('');
    num armstrongNumber = 0;

    for (String n in numList) {
      int nInt = int.parse(n);
      armstrongNumber += pow(nInt, length);
    }
    if (armstrongNumber == number) {
      print("");
      print("$number est un nombre armstrong");
      return true;
    }else{
        print("");
        print("$number n'est un nombre armstrong");
      return false;
    }
  }
}