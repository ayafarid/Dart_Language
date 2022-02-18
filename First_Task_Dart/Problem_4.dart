import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  int m, n;
  for (int i = 0; i < t; i++) {
    n = int.parse(stdin.readLineSync()!);
    m = int.parse(stdin.readLineSync()!);
    var A = List.filled(m,0);
    for(int i=0 ; i<m ; i++){
      A[i]=int.parse(stdin.readLineSync()!);
    }
    A.sort();
    int sum=0 ,count=0;
    print(m);
    for(int i=0 ; i<m ; i++){
      sum+=A[i];
      if(sum>n){
        break;
      }
      else if(sum<=n){
        count++;
      }
    }
    print('number of schools : $count');
  }
}
