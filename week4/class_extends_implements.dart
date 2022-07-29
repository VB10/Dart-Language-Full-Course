void main() {
  BankUser user1 = BankUser("teemo", 1000, 1234);
  specialUser user2 = specialUser("tunahan", 2990, 4321, 93);

  user1.infoMoney();
  user1.infoUser();
  user2.infoMoney();
  user2.infoUser();
}

abstract class IUser {
  void infoUser();
}

class User {
  final String name;
  final int money;

  User(this.name, this.money);

  void infoMoney() {
    print("$name parası $money");
  }
}

class BankUser extends User implements IUser {
  final int bankCode;

  BankUser(super.name, super.money, this.bankCode);

  @override
  void infoUser() {
    print("$name Bank User");
  }
}

class specialUser extends BankUser implements IUser {
  final int specialCode;
  specialUser(super.name, super.money, super.bankCode, this.specialCode);

  @override
  void infoUser() {
    print("$name Special User");
  }
}
