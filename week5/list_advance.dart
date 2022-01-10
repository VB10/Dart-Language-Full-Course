import 'class_singleton.dart';

void main(List<String> args) {
  final model = CarModel(category: CarModels.bmw, name: 'bmw x5', money: 1412, isSecondHand: false);

  final carItems = [
    CarModel(category: CarModels.bmw, name: 'bmw x5', money: 12, isSecondHand: false),
    CarModel(category: CarModels.toyota, name: 'toyota 234234', money: 45),
    CarModel(category: CarModels.yamaha, name: 'ymaaha 3324', money: 44, isSecondHand: false),
    CarModel(category: CarModels.bmw, name: 'bmw x5', money: 33),
    CarModel(category: CarModels.toyota, name: 'toyota 0ye', money: 55, isSecondHand: false),
  ];

  final resultCount = carItems.where((element) => element.isSecondHand == true).length;
  print(resultCount);

  final newCar = CarModel(category: CarModels.bmw, name: 'bmw x5', money: 33);

  final isHaveCar = carItems.contains(newCar);
  if (isHaveCar) {
    print('elimizde var');
  } else {
    print('patron yok alalaim');
  }

  final reusltBmwMore20 = carItems.where((element) {
    return element.category == CarModels.bmw && element.money > 20;
  }).join();

  print(reusltBmwMore20);

  final carNames = carItems.map((e) => e.name).join(',');
  print(carNames);

  bool isHaveCarMercedes = false;
  try {
    final mercedesCar = carItems.singleWhere((element) => element.category == CarModels.mercedes);
    print(mercedesCar.name);
    isHaveCarMercedes = true;
  } catch (e) {
    print('arabaa yok abi');
    isHaveCarMercedes = false;
  } finally {
    print('abi bu islem agir oldu bidaha sroma $isHaveCarMercedes');
  }

  final index = carItems.indexOf(newCar);
  print(index);
  final _mercedes = CarModel(category: CarModels.mercedes, name: 'merer', money: 12312);
  carItems.add(_mercedes);
  carItems.sort((first, second) => second.money.compareTo(first.money));

  final users = carItems.expand((element) => element.users).toList();
  calculateToUser(carItems);
  carItems.remove(_mercedes);
  carItems.removeWhere((element) => element.category == CarModels.bmw || element.money < 30);
  print(carItems);
}

// [toyota 0ye - 55.0, toyota 234234 - 45.0, ymaaha 3324 - 44.0, bmw x5 - 33.0]
// [toyota 0ye - 55.0, toyota 234234 - 45.0, ymaaha 3324 - 44.0]
// [toyota 0ye - 55.0, toyota 234234 - 45.0, ymaaha 3324 - 44.0, bmw x5 - 33.0]
// [toyota 0ye - 55.0, toyota 234234 - 45.0, ymaaha 3324 - 44.0, bmw x5 - 33.0]

void calculateToUser(List<CarModel> items) {
  // itemleri duzelt bmw olanlari yamaha
  final _items = [...items.toList()];
  final newItems = _items.map((CarModel e) {
    return CarModel(
        category: e.category == CarModels.bmw ? CarModels.yamaha : e.category,
        name: e.name,
        money: e.money,
        isSecondHand: false);
  }).toList();

  print(newItems);
}

// benim bir arabalar sinifim oalcak
//arabalarin modeli(bmw,tyotoa), ismi, parasi kesin olacak sehri olamyacak, ikinci el durumu eger musteri soylemezse
// her urun ikinci el kabul edilecek

// benim 5 tane arabam olacak

// benim bu arablairmin kac tanesi ikinci el
// yeni bir araba geldi bu bizde var gibi hissediyorum dogurmu?

// bana bmw olan ve moneyis 20den buyuk arabalarimizin ismini soyler misin

// ya acaba sadece isimleri yan yana gosterimisin

// benim elimde  mercedes varmi

// su yeni gelen arabaya ver demisin bunun kacini sirada soylermisin

// ya ben yeni araba aldim merceds ekelr misin

// bana arabalrimi kucuk buyuge dogru surlarmsin

// ben butuun arabalarimi user yapicam

// ya bu son ekelnei silelim
// bmw olan ve 30 dusuk olanlari sileim
class CarModel {
  CarModels category;
  final String name;
  final double money;

  List<User> users;
  String? city;
  bool isSecondHand;
  CarModel(
      {required this.category,
      required this.name,
      required this.money,
      this.city,
      this.isSecondHand = true,
      this.users = const []});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarModel &&
        other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^ name.hashCode ^ money.hashCode ^ city.hashCode ^ isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$name - $money';
  }
}

enum CarModels { bmw, yamaha, toyota, mercedes }
