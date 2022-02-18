import 'dart:io';

void main(){
    var num = int.parse(stdin.readLineSync()!); 
    var fact = 1;
    for(int i=1 ; i<=num ; i++){
      fact*=i;
    }
    print(fact);
}