class Product {
  final int productId;
  final String name;
  double price;
  int instock;

  Product(this.productId, this.name, this.price, this.instock);

  void updatestock(int quantity) {
    instock += quantity;
  }

  @override
  String toString() {
    return 'Product ID: $productId, Name: $name, Price: \$${price}, Stock Quantity: $instock';
  }
}
