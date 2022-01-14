void main(List<String> args) {
  IUser user = Turk();

  user.sayName();
  user = English();
  user.sayName();
}

abstract class IUser {
  final String name;

  IUser(this.name);
  void sayName();
}

class Turk implements IUser {
  @override
  String get name => 'veli';

  @override
  void sayName() {
    print('merhaba kapidan hosgeldiniz $name');
    print('karnmin acmi?');
  }
}

class English implements IUser {
  @override
  String get name => 'Adam';

  @override
  void sayName() {
    print('welcome to your home $name');
    print('let\'s meet our friends in OxFord');
  }
}

class German {
  @override
  String get name => 'veli';

  @override
  void sayName() {
    print('merhaba kapidan hosgeldiniz $name');
    print('karnmin acmi?');
  }
}
