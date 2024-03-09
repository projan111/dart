
import 'dart:ffi';

void main(){
  // In Flutter: Map function is similar like Object in Javascript
  var person = Map();

  person["name"] = "Johan Doe";
  person["age"] = 23;
  person["phone"] = 9749761111;

  print(person["name"]);

  var person2 = {
    "name": "Kri Mul",
    "age": 25,
    "phone": 9861983555,
  };

  print(person2);

  print(person.isEmpty);
  print(person.isEmpty);
  print(person.isEmpty);
  print(person.keys);
  print(person.isEmpty);
  print(person2.containsKey("name"));

  finalAndConst();

}

void finalAndConst (){
  // final key and
  // const key in Dart Programming Language;

  // final is unique and assign it once that we can't reassign it.
  final String name;
  name =  "Ajay";

  const age = 30; // we need to assign the value to the const instantly

  print("I am a Function" + " name: " + name );

  for (int i = 1; i<=30; i++){
    print(i);
  }

}