import 'dart:io';
import 'dart:math';

void main() {
  String s = 'ABCDEFGHIJKLMNOBQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#';
  int num_of_char_in_string=10;
  String random_pass='';
  for(int i=0 ; i<num_of_char_in_string ; i++){
    random_pass+=s[random(0, s.length)];
  }
  print(random_pass);
}
int random(min, max) {
  return min + Random().nextInt(max - min);
}
