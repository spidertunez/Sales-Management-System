import 'Customer.dart';
import 'Product .dart';
import 'Order.dart';
import 'Salesperson.dart';
import 'Salestransiction.dart';

void main() {
  var customer1 = Customer(1, 'Nagham Darrag', 'Nagham@gmail.com', '12345667');
  var customer2 = Customer(2, 'Nada Darrag', 'Nada@gmail.com', '1234567');


  var product1 = Product(101, 'Laptop', 1000, 10);
  var product2 = Product(102, 'iphone', 2000, 20);
 
  var salesperson1 = Salesperson(201, 'ali', 'ali@gmail.com', '1111', 50000);
  var salesperson2 = Salesperson(202, 'sara', 'sara@gmail.com', '22222', 60000);

  var order1 = Order(301, customer1, DateTime.now());
  var order2 = Order(302, customer2, DateTime.now());


  order1.addProduct(product1, 1);  
  order1.addProduct(product2, 2);  


  var transaction1 = SalesTransaction(
    401,
    customer1,
    salesperson1,
    DateTime.now(),
    order1,
    order1.getTotalAmount(),
    'Credit Card',
    'Completed',
  );

  var transaction2 = SalesTransaction(
    402,
    customer2,
    salesperson2,
    DateTime.now(),
    order2,
    order2.getTotalAmount(),
    'Cash on deleivery',
    'Not completed',
  );


    print(transaction1.printDetails());
  print('\n'); 
  print(transaction2.printDetails());
}
