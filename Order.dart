import 'Customer.dart';
import 'Product .dart';
import 'print.dart';

class Order implements Printt {
  final int orderId;
  final Customer customer;
  final DateTime orderDate;
  final Map<Product, int> items = {};

  Order(this.orderId, this.customer, this.orderDate);

  void addProduct(Product product, int quantity) {
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
    var itemDetails = items.entries.map((entry) {
      var product = entry.key;
      var quantity = entry.value;
      return 'Product ID: ${product.productId}, Name: ${product.name}, Quantity: $quantity, Price: \$${product.price.toStringAsFixed(2)}';
    }).join('\n');

    return 'Order ID: $orderId\n'
           'Customer: ${customer.name}\n'
           'Date: $orderDate\n'
           'Items:\n$itemDetails\n'
           'Total Amount: \$${getTotalAmount().toStringAsFixed(2)}';
  }
}
