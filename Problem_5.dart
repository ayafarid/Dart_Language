import 'dart:io';
import 'dart:math';

void main() {
  var num=random(1, 10);
  var guessed_number;
  var chek=true;
  while(chek){
    print('Enter the number you guess : ');
    guessed_number = int.parse(stdin.readLineSync()!);
    if(num==guessed_number){
      chek=false;
      print('Well guessed!');
    }
  }
  random(1,3);
}

int random(min, max) {
  return min + Random().nextInt(max - min);
}
