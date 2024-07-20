import 'Person.dart';

class Salesperson extends person {
  double salary;

  Salesperson(int id, String name, String email, String phone, this.salary)
      : super(id, name);

  @override
  String toString() {
    return '${super.toString()}, Email: ${'email'}, Phone: ${'phone'}, Salary: \$${salary}';
  }
}
