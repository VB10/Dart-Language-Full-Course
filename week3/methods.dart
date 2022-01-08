void main() {
  // benim bir musterim var parasi var mi yok mu kontrol eder misin

  final int userMoney = 0;
  controlUserMoney(userMoney, 0);
  // if (userMoney > 5) {
  //   print('parasi var');
  // } else {
  //   print('parasi yok');
  // }

  // benim bi usterim daha geldi onada bakar misin
  final int user2Money = 5;

  controlUserMoney(user2Money, 5);
  // if (user2Money > 5) {
  //   print('parasi var');
  // } else {
  //   print('parasi yok');
  // }

  // ya dedi acaba 0 degilde en azindan bi 5tl  si olsun

  //yeni musteri gelir parasi 50 tl
  // parasini dolar yapmak istiyor ve kac dolar yaptgini merak ediyor

  final newUserMoney = 50;

  print(newUserMoney / 13);

  int result = convertToDolar(newUserMoney);

  print(result);
  if (result > 0) {}

  // bana bir dolar hesaplama yapp eger ben sana soyelmezsem yeni bir durum var diye her zaman 13 al

  final newResult = convertToStandartDolar(100, dolarIndex: 13);
  final newResult2 = convertToStandartDolar(100);
  final newREsult3 = convertToEuro(userMoney: 500);
  sayHello('aa');
}

void controlUserMoney(int money, int minumumValue) {
  if (money > minumumValue) {
    print('para var');
  } else {
    print('para yok');
  }
}

int convertToDolar(int userMoney) {
  return userMoney ~/ 13;
}

int convertToStandartDolar(int userMoney, {int dolarIndex = 14}) {
  return userMoney ~/ dolarIndex;
}

int convertToEuro({required int userMoney, int dolarIndex = 14}) {
  return userMoney ~/ dolarIndex;
}

String sayHello(String name) {
  return 'hello $name';
}
