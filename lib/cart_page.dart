import 'package:flutter/material.dart';
import 'models/cart.dart';
import 'checkout_page.dart';


class CartPage extends StatefulWidget {
  final Cart cart;

  CartPage({required this.cart});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text(
          'My Cart',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.cart.items.length,
              itemBuilder: (context, index) {
                final cartItem = widget.cart.items[index];

                return ListTile(
                  title: Text(
                    cartItem.product.name,
                    style: TextStyle(
                      fontSize: 18, // Adjusting the fontSize as needed
                      fontWeight: FontWeight.bold, // Adjusting the fontWeight as needed
                    ),
                  ),
                  subtitle: Text(
                    'Quantity: ${cartItem.quantity}',
                    style: TextStyle(
                      fontSize: 16, // Adjusting the fontSize as needed
                      fontWeight: FontWeight.normal, // Adjusting the fontWeight as needed
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      // Remove the item from the cart
                      widget.cart.removeItem(cartItem);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Item removed from the cart'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                      setState(() {});
                    },
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16.0),
            width: MediaQuery.of(context).size.width, // Setting width to full screen width
            child: ElevatedButton(
              onPressed: () {
                // Navigate to checkout page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckoutFormPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlueAccent,
              ),
              child: Text('Checkout'),
            ),
          ),
        ],
      ),
    );
  }
}
