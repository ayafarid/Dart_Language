import 'dart:io';

void main() {
  var Dkm = int.parse(stdin.readLineSync()!);
  var OC, OF, OD, CS, CB, CM, CD, online_cost, classic_cost;
  var string1 = stdin.readLineSync();
  var string2 = stdin.readLineSync();
  var online =string1!.split(' ');
  var classic = string2!.split(' ');
  OC = int.parse(online[0]);
  OF = int.parse(online[1]);
  OD = int.parse(online[2]);
  CS = int.parse(classic[0]);
  CB = int.parse(classic[1]);
  CM = int.parse(classic[2]);
  CD = int.parse(classic[3]);
  //print('$OC $OF $OD $CS $CB $CM $CD');
  online_cost = OC;
  if (Dkm - OD > 0) {
    online_cost += ((Dkm - OF) * OD);
  } else {
    online_cost += 0;
  }
  classic_cost = CB + ((Dkm / CS) * CM) + CD * Dkm;
  if (online_cost <= classic_cost) {
    print('Online Taxi');
  } else {
    print('Classic Taxi');
  }
}
