import 'Customer.dart';
import 'Order.dart';
import 'Salesperson.dart';
import 'print.dart';

class SalesTransaction implements Printt {
  final int transactionId;
  final Customer customer;
  final Salesperson salesperson;
  final DateTime transactionDate;
  final Order order;
  final double totalAmount;
  final String paymentMethod;
  String status;

  SalesTransaction(
    this.transactionId,
    this.customer,
    this.salesperson,
    this.transactionDate,
    this.order,
    this.totalAmount,
    this.paymentMethod,
    this.status,
  );

  @override
  String printDetails() {
    return 'Transaction ID: $transactionId\n'
           'Customer: ${customer.name}\n'
           'Salesperson: ${salesperson.name}\n'
           'Date: $transactionDate\n'
           '${order.printDetails()}\n'
           'Total Amount: \$${totalAmount.toStringAsFixed(2)}\n'
           'Payment Method: $paymentMethod\n'
           'Status: $status';
  }
}
