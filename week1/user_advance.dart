void main() {
  final String userName = "veli";

  final int bankMoney = 100;
  const String bankName = "VB Bank";

  var userName2 = 'veli2';
  var userName2Money = 15;

  userName2Money -= 10;

// -----
// Bank name = "VB BANK"
// bank user 1 = "bank1musteri"
// bank user 1 in parasi 100.00
// bank1 musteriye kimse dokunmaz!
// yeni bir musteri gelecek adi bank2musteri
// yeni bankaya gelenden bu bank user1 parasini cikartip ekrana gosterelim

// camel case, kebap case, upper case
//kirmiziaraba kirmiziAraba KirmiziAraba , KIRMIZI_ARABA

  const String bankNameSpecial = "VB Bank";
  const String user1 = "Bank 1 musteri";
  const double user1Money = 100.00;

  const String user2 = "Bank 2 msteri";
  int user2Money = 500;

  user2Money = user2Money - user1Money.toInt();

  print("User 2 money:  $user2Money");
}


// Odev2
// Benim bir hali saham var 100 kisi kapasiteli
// saat 10'da 20 kisilik bir musteri1 mac yapicak ve 20 kesin kesin gelecek
// saat 10'da musteri2 gelip bana 50 kisilik yer ayriticak
// bu islem sonrasidna benim hali saha kapasitem kac kalmistir

// Hint
// int sum = musteri1 + muster2 
// print total(cosnt) - sum