void main(List<String> args) {
  IDatabase database = SQL();
  database = Mongo();
  database.write();
}

class UserManager {
  String name;
  UserManager({
    required this.name,
  });
  void changeUserName(String name) {
    this.name = name;
  }
}

class UserLocalization {
  final UserManager manager;

  UserLocalization(this.manager);

  void updateNameAndLoclaziaitopn() {
    manager.changeUserName('a');
    changeLocalizaiton();
  }

  void changeLocalizaiton() {
    print('object');
  }
}

//

class Product {
  final String name;
  final String money;

  Product(this.name, this.money);
}

class ProductCategories extends Product {
  ProductCategories(String name, String money) : super(name, money);

  final String category = ";l";
}

//

abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {
    // TODO: implement write
  }
}

class Mongo extends IDatabase {
  @override
  void write() {
    // TODO: implement write
  }
}

//

abstract class IUserOperation with IUserLocation, ILanguage {
  void write();
  void read();
  void delete();
}

abstract class IUserLocation {
  void locationChange();
}

abstract class ILanguage {
  void langugae();
}

class UserLocation extends IUserLocation {
  @override
  void locationChange() {
    // TODO: implement locationChange
  }
}

//

abstract class ICamereManager {
  void readQR();
}

class DeviceCamaereManager extends ICamereManager {
  final IphoneCamereRead iphoneCamereRead;

  DeviceCamaereManager(this.iphoneCamereRead);
  @override
  void readQR() {}
}

class IphoneCamereRead extends ICamereManager {
  @override
  void readQR() {
    // TODO: implement readQR
  }
}
