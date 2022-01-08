void main() {
  // musteri geldi adi ahmet parasi 20

  Map<String, int> users = {'ahmet': 20, 'mehet': 30};

  // musteri ahmetin ne kadar parasi var

  print('ahmetin parasi ${users['ahmet']}');

  // musteri kimler var senin elinde

  for (var item in users.keys) {
    print('${item} - ${users[item]}');
  }

  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');
  }

  // benim bankayim. musterilimin birden fazla hesabi oalbilir
  // ahmet bey 3 hesabi var sirasiyla 100, 300 ,200
  // mehmet bey 2 hesabi var 30 50
  // veli bey 1 hesap 30

  // adamlarin hesaplarini kontrol et herhangi bir hesapta 150 tlden fazla olan varsa krediniz hazir de

  print('----------------');
  final Map<String, List<int>> vbBank = {
    'ahmet': [100, 300, 200]
  };
  vbBank['mehmet'] = [30, 50];
  vbBank['veli'] = [30];

  for (var item in vbBank.keys) {
    // banknin tum elemanlari

    for (var money in vbBank[item]!) {
      // userin hesaplarini dolasiyorum

      if (money > 150) {
        print('kredin hazir');
        break;
      }
    }
  }

  // bankadi musterilin hesaplarinin toplam mevlasini merak ediyorum

  for (var name in vbBank.keys) {
    //vbBank[item]!-> musterinin hesaplari demek
    int result = 0;
    for (var money in vbBank[name]!) {
      result = result + money;
    }

    print('$name senin toplam paran -> $result');
  }
}
