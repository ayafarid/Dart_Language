import 'dart:io';

void main(){
    String string = stdin.readLineSync()!; 
    var num = string.length;
    bool chek=true;
    for(var i=0, j=num-1 ; i<num/2&&j>num/2 ; j--,i++){
      print('${string[i]} & ${string[j]}');
      if(string[i]!=string[j]){
        chek=false;
        break;
      }
    }
    print(chek? 'balindrom':'not balindrom');
}