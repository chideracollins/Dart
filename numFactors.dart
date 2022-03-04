import 'dart:io';
import 'dart:math';

void main() {
  print("Enter a number to compute and display it's factors: ");
  int? num = int.parse(stdin.readLineSync()!);
  int hFactor = 0;
  if (num % 2 == 0) {
    hFactor = (num / 2).floor();
  } else if (num % 2 == 1) {
    hFactor = (num / 3).floor();
  }

  for (int i = 1; i < hFactor; i++) {
    if (num % i == 0) {
      print(i);
    }
  }
  print(num);
}
