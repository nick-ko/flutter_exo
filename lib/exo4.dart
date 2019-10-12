import 'dart:io';
String tech1(){
  print("blablabla");
}

String tech2(){
  var dure=Duration(seconds: 10);
  Future.delayed(dure,()=>print("futuuuuuuuuuuuur"));
  sleep(dure);
  print("blobloblo");
}

String tech3(){
  print("bliblibli");
}

main(List<String> args) {
  tech1();
  tech2();
  tech3();


}