void main(List<String> args) {
  final user = User(money: 5);

  user.calculateMoney((int result) {
    print(user.money);
    return result + 5;
  });
}

typedef CalculateCallBack = int Function(int data);

class User {
  @deprecated
  int money;
  User({
    required this.money,
  });

  void calculateMoney(CalculateCallBack onComplete) {
    money += 5;
    final passData = onComplete(money);
  }

  @Todo('seth', 'make this do something')
  void a() {}
}

class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);
}
