import 'product.dart';
import 'CartItem.dart';

class Cart {
  List<CartItem> items = [];

  void addItem(Product product) {
    // Checking if the product is already in the cart
    int index = items.indexWhere((item) => item.product == product);

    if (index != -1) {
      // If the product is already in the cart, increase the quantity
      items[index].quantity += 1;
    } else {
      // If the product is not in the cart, add it with quantity 1
      items.add(CartItem(product: product));
    }
  }

  void removeItem(CartItem cartItem) {
    items.remove(cartItem);
  }
}
