void main(List<String> args) {}

abstract class IStudent {
  final String name;
  final String age;

  int? schoolId;

  void saySomething() {
    print(age);
  }

  IStudent(this.name, this.age);
}

class Student implements IStudent {
  final String name;
  final String age;

  Student(this.name, this.age);

  @override
  void saySomething() {}

  @override
  int? schoolId;
}

class Student2 implements IStudent {
  final String name;
  final String age;

  Student2(this.name, this.age);

  @override
  void saySomething() {
    print('a');
  }

  @override
  int? schoolId;
}
