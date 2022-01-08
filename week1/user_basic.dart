void main() {
  // musterinin adini tut
  // musterinin parasini ogren
  // musteriye merhaba diyip parasni soyle
  // bizim bankaya geldigi icin parasina +5 tl ekle
  // ya acaba 10 yapabilir miyiz

  print("Merhaba" + '${25 + 5}');

  int userMoney = 25;
  String userName = "Veli";
  userMoney = userMoney + 5;

  print("Merhaba $userName $userMoney");

  print('--------');
  userMoney = userMoney - 10;
  print('Paraniz deger kaybetti $userMoney');

  userMoney = userMoney + 5;
  userMoney += 5;

  userMoney = userMoney ~/ 2;

  double ahmetMoney = 15.2;
  ahmetMoney = ahmetMoney / 2;
  print('ahmet bey paraniz uctu $ahmetMoney');
  print('veli bey paraniz uctu $userMoney');
}
// yeni bir user adi olustur
// yeni bir para ver ver
// bu parayi 20 ye bol ve ekranda goster