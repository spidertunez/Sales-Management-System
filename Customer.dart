import 'Person.dart';

class Customer extends person {
  final String email;
  final String phoneNumber;

  Customer(int customerId, String name, this.email, this.phoneNumber)
      : super(customerId, name);

  @override
  String toString() {
    return '${super.toString()}, Email: $email, Phone: $phoneNumber';
  }
}
