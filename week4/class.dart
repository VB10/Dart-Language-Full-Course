import 'model/user_model.dart';
import 'model/user_model_2.dart';

void main() {
  // musteri adi var, parasi var, yasi var bla bla

  final int customerMoney = 50;
  final String customerName = "veli";
  final int customerAge = 13;
  final String customerCity = 'Ardahan';

  // bu mestirimin yasi 10 buyukse bir islem yapalim

  controlCustomerAge(customerMoney);

  // yeni musteri geliyor yine ayni alnanlar

  final int customerMoney2 = 50;
  final String customerName2 = "veli";
  final int customerAge2 = 13;
  final String customerCity2 = 'asd';

  controlCustomerAge(customerMoney2);

  // unutmusuz musterlerin sehirleri

  // ---
  // ya ben musterileri gruplasam, yani bir kuemelesem ve bunlar ayni ozellikleri ayni sekilde bana gosteriblse

  int? newMoney;
  if (newMoney != null) {
    print(newMoney + 50);
  } else {
    print(10 + 10);
  }

  // musteri diyorki ya bak bizim bir servisimz var paralari veren eger bir cavap gelmezse sen ana deger olarak 10 ata
  // print(newMoney! + 10);
  // print(newMoney + 10);

  // bankaya 3 tane musteri gelir birinin 100tlsi var digerinin hesabi hic yok digerinin 0 tlsi var
  // hesabi olmayana ghelin hesap acalim, 0 tlsi olani kov, 100tlsi olana musterim hosgeldin

  // yeni bir method olsun bu methodda hesabi olmaynanlari ve parasi olamyanlari yok sayalim
  // para verdiklerimizi ekranda true yazalim

  List<int?> customerMoneys = [100, null, 0];

  for (var item in customerMoneys) {
    if (item != null) {
      if (item > 0) {
        print('beyfendi');
      } else {
        print('byy');
      }
    } else {
      print('haydi hesap acalim');
    }

    // ----
    bool result = controlMoney(item) == null ? false : true;
    print(result);
  }

  print('----------------' * 10);

  int customerMoneyX = 15;
  User user1 = User('vb', 15, age: 21, city: 'aaa', id: '123');
  // User user2 = User('vb2', 15, null, null);

  final user3 = User('aa', 159, age: 13, id: '12');

  print(user3.userCode);

  print(user1.name);

  // musteri son gelen kisinin citysiniina gore kapmanya yapacak eger istanbul ise

  if (user3.city == null) {
    print('musteri sehir bilgisini vermemis');
  } else {
    if (user3.city!.isEmpty) {
      print('okok');
    }

    if (user3.city == 'istanbul') {
      print('tebirkler kazadniniz');
    }
  }

  // musteri idsi 12 olana indirim yap

  if (user3.isSpecialUser('12')) {
    user3.money += 5;
    print('para eklendi');
  }

  //

  User2 newUser2 = User2('vb', 15);
  newUser2.money += 5;
  newUser2.money = null;

  print(newUser2.toString());
}

int? controlMoney(int? money) {
  if (money != null && money > 0) {
    return money;
  }

  // if (money == null || money == 0) {
  //   return null;
  // }
}

void controlCustomerAge(int value) {
  if (value > 10) {
    print('alisveris yapabilirsiniz');
  } else {
    print('alisvers yapamaiyz');
  }
}
