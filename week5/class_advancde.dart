void main(List<String> args) {
  final user = _User('veli', age: 21);

  // msuterinin yasi 18den kucuk kotnrolu yaparmisin

  // if ((user.age ?? 10) < 18) {}

  if (user.age is! int) {
    if (user.age! < 18) {
      print('evet kucuk');
      user.updateMoneyWithString("TR");
    } else {
      user.updateMoneyWithNumber(15);
    }
  }

  // kullancilarimin parasi var ama paranin tipi degisken olabilir
  // parasi olan admin o paramtresi bir isimde olabilir veya deger olablilir
  // tr yazacak yada orada 15 yazabilir
  // ekranda goster
  final _newType = user.moneyType is String ? (user.moneyType as String) : "";

  print(_newType + "A");
  // =====
  int money1 = 50;
  int money2 = 50;

  if (money1 == money2) {
    print('ok');
  }

  final moneyBank1 = Bank(40, '12');
  final moneyBank2 = Bank(30, '12');

  print(moneyBank1 == moneyBank2);
  final newResult = "a" + "a";

  // musteri banka sinfindan iki kisinin parasini  topayip soucu soylermisin

  print(moneyBank1 + moneyBank2);

  // benim bankma gelen musterlmiin idsi ayni onanlar ayni musteri olmaldir
  print(moneyBank1.toString());
  print(moneyBank1 == moneyBank2);

  // diger bankadan bir modul aldik bunu ekleyip musterinin parasini sorgularmisin

  // musteri adamin parasina 10tl ekle ekrana dondur, adamin idsini 1 artir sonrasinda ismini veli yap

  moneyBank1.money += 10;
  print(moneyBank1.money);

  moneyBank1
    ..money += 10
    ..updateName('veli');

  print(moneyBank1);
}

class _User {
  final String name;

  int? age;

  dynamic moneyType;

  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
}

class Bank with BankMixin {
  int money;
  final String id;
  String? name;

  Bank(this.money, this.id);

  int operator +(Bank newBank) {
    return money + newBank.money;
  }

  void updateName(String name) {
    this.name = name;
  }

  @override
  String toString() {
    return super.toString() + 'veli';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Bank && other.id == id;
  }

  @override
  int get hashCode => money.hashCode ^ id.hashCode;

  @override
  void sayBankHello() {
    calculateMoney(money);
  }
}

mixin BankMixin {
  void sayBankHello();

  void calculateMoney(int money) {
    print('money');
  }
}
