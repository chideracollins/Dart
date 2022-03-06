import 'dart:io';
import 'dart:math';

class Rating {
  int age;
  int score;
  String rating;
  Rating(this.age, this.score, this.rating);
}

void main() {
  List<String> dtList = [];
  dtList = File("test.csv").open() as List<String>;
/*  String content = File("test.csv").readAsStringSync();
  print(content.runtimeType);
  for (String i in dtList) {
    print(i);*/
  print(dtList);
//  File("test.csv").readAsString().then((value) => print("$value\n"));*/
}
