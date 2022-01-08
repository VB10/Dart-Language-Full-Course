void main() {
  int money = 50;
  String userName = "veli";
  // bool => 0 , 1
  bool isCustomerRich = false;
  print('$money' + userName);

  if (money > 10) {
    print("Sen zenginsin abii");
  } else {
    print('gerekirse simit yeriz');
  }

  money = money - 10;

  if (money > 10) {
    print("Sen cok zenginsin abii");
  } else {
    print('abi burada ne isin var');
  }
  //

  // musteri bankaya gelir ve 10 tlsi vardir ve bir sorgu yapar
  // sorgu sonucu 20tl si alinacak fakat eger parasi soruguya yeterli ise
  // eger kalan parasi sifirdan kucukse bankadan kovulur
  // eger diyor adamin parasi banking costa yetmiyorsa bankaya almayin

  int newCustomerMoney = 0;
  const int bankingCost = 5;
  const int bankingCostGeneral = 20;

  if (newCustomerMoney > bankingCost) {
    print('hosglediniz beyfendi');
    newCustomerMoney = newCustomerMoney - bankingCostGeneral;
  } else if (newCustomerMoney > 0) {
    print('beyfendi lutfen sira alinirz');
  } else {
    print('beyfendi kredinizi odeyin');
  }

  // bir magazaya isim verilecek
  // ver ornek isimler toplanir
  // ornek isimler: ahmet, mehmet veli, kx, x
  // magaza derki ben sadece karakter uzunlugu iki veya daha alti olanlari gormek istiyorum
  // bu kosula uyanlari yan yana gormek istiyorum aralinda bosluk olacak

  final String ahmetCompany = "Ahmet";
  final String mehmetCompany = "Mehmet";
  final String veliCompany = "Veli";
  final String kxCompony = "kx";
  final String xCompany = "x";

  const int companyLenght = 6;
  String results = "";
  if (ahmetCompany.length > companyLenght) {
    results = results + ahmetCompany;
  }
  if (mehmetCompany.length > companyLenght) {
    results = results + mehmetCompany;
  }
  if (veliCompany.length > companyLenght) {
    results = results + veliCompany;
  }
  if (kxCompony.length > companyLenght) {
    results = results + kxCompony;
  }
  if (xCompany.length > companyLenght) {
    results += xCompany;
  }

  if (results.isEmpty) {
    //<_= , results.length <= 0
    print('patron bulamadik');
  } else {
    print(results);
  }
}
