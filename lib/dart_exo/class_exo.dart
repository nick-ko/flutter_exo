class Student {

  String name,lastname;
  String email;
  int age;

  Student({this.name,this.lastname,this.age,this.email});

  void introduced(Student student){
    print(student.name);
    print(student.lastname);
    print(student.email);
    print(student.age);
  }
   

  
}

void main(List<String> args) {
  
  Student nan=Student(name: "nick",lastname: "dev",email: "naanan",age: 10);
  Student nan1=Student(name: "nicko",lastname: "devo",email: "naanan",age: 25);
  Student nan2=Student(name: "nic",lastname: "devi",email: "naanan",age: 28);
  Student nan3=Student(name: "nicaise",lastname: "deva",email: "naanan",age: 20);
  Student nan4=Student(name: "nico",lastname: "deve",email: "naanan",age: 30);

  var personnage=[];

   personnage=[nan,nan1,nan2,nan3,nan4];
   List<Student> bon=[];

   for (var i = 0; i < personnage.length; i++) {
    if (personnage[i].age>18) {
      bon.add(personnage[i]);
    } 
  }
   bon.forEach((f)=>print(f.name));
}

