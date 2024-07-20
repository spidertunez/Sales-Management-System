import 'Customer.dart';
import 'Product .dart';
import 'print.dart';

class Order implements Print {
  final int orderId;
  final Customer customer;
  final DateTime orderDate;
  final Map<Product, int> items = {};

  Order(this.orderId, this.customer, this.orderDate);

  void addProduct(Product product, int quantity) {
    if (quantity <= 0) return;
    items[product] = (items[product] ?? 0) + quantity;
    product.updatestock(-quantity);
  }

  double getTotalAmount() {
    double total = 0.0;
    items.forEach((product, quantity) {
      total += product.price * quantity;
    });
    return total;
  }

  @override
  String printDetails() {
    return 'Order ID: $orderId\n'
           'Customer: ${customer.name}\n'
           'Date: $orderDate\n'
           'Items:\n' +
           items.entries.map((entry) =>
             'Product: ${entry.key.name}, Quantity: ${entry.value}, Price: \$${entry.key.price.toStringAsFixed(2)}'
           ).join('\n');
  }
}
