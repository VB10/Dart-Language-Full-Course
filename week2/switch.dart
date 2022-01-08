void main() {
  final int classDegree = 45;
  bool isSucess = false;
  // 2 ise ekrana bravo
  // 1 ise olur
  // 0 ise yeterli
  // diger durumlarda basarrisiz

  const int succesValueHigh = 2;

  switch (classDegree) {
    case succesValueHigh:
      print('bravo');
      isSucess = true;
      break;
    case 1:
      print('olur');
      isSucess = true;

      break;
    case 0:
      print('yeterli');
      isSucess = true;

      break;
    default:
      print('basarsiz');
      isSucess = false;
  }

  print('beyfendi cocguunuzun sonucu: $isSucess');

// magazaya gelen isimlerden veli olan olursa print bravoo yaz
// ekin
  String name = "asdasd";

  const String specialUser1 = "veli";
  const String specialUser2 = "mehmet";

  switch (name) {
    case "veli":
    case "ekin":
      print('bravo');
      break;
    default:
      print('sorunlu');
  }

  switch (name) {
    case specialUser1:
    case specialUser2:
      print('bravo');
      break;
    default:
      print('sorunlu');
  }
}
