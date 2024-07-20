import 'Person.dart';

class Salesperson extends Person {
  final String email;
  final String phone;
  double salary;

  Salesperson(int id, String name, this.email, this.phone, this.salary)
      : super(id, name);

  @override
  String toString() {
    return '${super.toString()}, Email: $email, Phone: $phone, Salary: \$${salary}';
  }
}
