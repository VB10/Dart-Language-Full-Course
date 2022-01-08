void main() {
  // Bir bankaya on musteri gelir bunlarin 100 tlsi 110tl 50 tlsi vardir

  final int money1 = 100;
  final int money2 = 110;

  // 100 buyuk olanlara hosgeldiniz beyfendi

  if (money1 > 100) {
    print('beyfendi');
  }

  if (money2 > 100) {
    print('aa');
  }

  String name = '';
  // 0, 1, 2
  List<int> moneys = [100, 110, 500, 200, 300];
  final List<int> newMoneys = [100, 110, 500, 200, 300];

  print('musteri 1 parasi: ${moneys[0]}');

  // paralari parasi buyuk olana gore

  moneys.sort();
  moneys.add(15);
  moneys.insert(2, 300);
  moneys.insert(0, 5);
  print(moneys);

  // newMoneys = [];
  newMoneys.add(5);
  newMoneys.clear();

  print(newMoneys);
  // newMoneys.reversed.toList();

  // 100 tanme musteri yap bunlarin hepsine sira ile numarasina gore 5 tl ekle

  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });
  print(customerMoney);

  // Customers 100  30 40 60
  // 35 tl den buyuk olanlari burada kredi vereiblirz yaz
  // kucuk olanlar bye

  List<int> moneyCustomerNews = [100, 30, 40, 60, -5];
  moneyCustomerNews.sort();
  for (int index = 0; index < moneyCustomerNews.length; index += 1) {
    print('musteri parasi: ${moneyCustomerNews[index]}');
    if (moneyCustomerNews[index] > 35) {
      print('kredi hazir');
    } else if (moneyCustomerNews[index] > 0) {
      print('kredi veremeyiz ama bi bakalim');
    } else {
      print('by');
    }
  }
  print('----');
  for (int index = moneyCustomerNews.length - 1; index >= 0; index += -1) {
    print('musteri parasi: ${moneyCustomerNews[index]}');
    if (moneyCustomerNews[index] > 35) {
      print('kredi hazir');
    } else if (moneyCustomerNews[index] > 0) {
      print('kredi veremeyiz ama bi bakalim');
    } else {
      print('by');
    }
  }

  print('aaaa');
  List<dynamic> users = [1, 'a', true];

  for (var item in users) {
    print(item);
  }

  List<String> userNames = ['ali', 'mehmet', 'ayse'];

  userNames.contains('veli');

  for (var item in userNames) {
    if (item == 'veli') {
      print('var');
    }
  }
}
