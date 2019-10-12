var number = 42;
int n=12;
double d= 2.2;
String c="holohlho";
bool  t=true;



void main(){
  List myList=[];
  myList=[n,d,c,t];
  myList.add(5);
  myList[4]=12;
  
  /*
  for (var i = 0; i < myList.length; i++) {
    print(myList[i]); 
  }

  myList.forEach((f)=>print(f));

  

  for (var item in myList) {
    print(item);
  }
  */

  List entier=[];
   entier=[1,5,7,9,3];
   var total = 0;
   var somme = 0;
   var total2=0;

   for (var i = 0; i < entier.length; i++) {
     total= total + entier[i]; 
  }

   for (var item in entier) {
    somme=somme + item;
  }
   
   entier.forEach((f)=>total2+=f);

   //verifie si un element existe dans la list
   //print(entier.contains(5));

   List age=[12,65,4,9,75,10,40,2,3];

   /*
    recupere le elemnts d'une list qui verifie la condition
   var sup10=age.Where((i)=> i>10);
   */

   var sup10=age.lastWhere((i)=> i>10,orElse:()=>true);


   //print(age.take(3).toList());

   //print(age.skip(7).toList());

  /*
  take:recupere des elements ds la liste
  var take=age.take(6).toList();
    print(take.skip(5).toList());

    */
    List expanded=[];

    List data=[[12,65,4,9,75,10,40,2,3],[1,5,7,9,3]];

    //print(data.expand((f)=> f).toList());
    


   // print(age.every((i)=> i>0));

    /*
    map recopier une liste et ajouter des element supplementaire
    */

    List fruit=["orange","banane","pomme","clemantine"];

    //print(fruit.map((f)=> "$f est un agrume").toList());

    /*
    var taille=age.length;
    taille>5?print("mon tableau contient plus de 5") : print("ton tableau contient pas 5 element");
    taille>5?? "mon tableau contient plus de 5";

    */


    //  LES MAPS

    Map myMap=Map();
    var map ={1:"one",2:"two",3:"three"};


    //LES FONCTIONS

   int optionel(int a,int b,[int c]){
     var som;

     c !=null? som=a+b+c : som=a+b;
     return som;
   }

   //print(optionel(2, 8,17));

   int optionelName(a, b,{trois:2,quatre}){
     var result;

     trois !=null? result=(a+b)*trois : result=a+b;
     return result;
     
   }

   print(optionelName(2, 5));

    

    
     
   




}

