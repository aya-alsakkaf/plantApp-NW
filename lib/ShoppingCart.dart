// import 'package:flutter/material.dart';
// // import 'package:signuptryingpage/homePage.dart';

// class CartPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFF9CAD92),
//         title: Center(
//           child: Text('Shopping Cart'),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Product {
  final int id;
  final String name;
  final double price;

  Product({required this.id, required this.name, required this.price});
}

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});
}

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  List<CartItem> _cartItems = [];

  List<Product> _products = [
    Product(id: 1, name: 'Money Tree', price: 10.0),
    Product(id: 2, name: 'Spider PLant', price: 20.0),
    Product(id: 3, name: 'Orchid', price: 30.0),
    Product(id: 4, name: 'Peace Lily', price: 40.0),
    Product(id: 5, name: 'Asparagus Fern', price: 50.0),
    Product(id: 6, name: 'English Ivy', price: 60.0),
  ];

  void _addItemToCart(Product product) {
    setState(() {
      int index =
          _cartItems.indexWhere((item) => item.product.id == product.id);
      if (index != -1) {
        _cartItems[index].quantity++;
      } else {
        _cartItems.add(CartItem(product: product));
      }
    });
  }

  void _removeItemFromCart(int productId) {
    setState(() {
      _cartItems.removeWhere((item) => item.product.id == productId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF9CAD92),
        title: Center(child: Text('Shopping Cart')),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _products.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_products[index].name),
                  subtitle: Text('\$${_products[index].price.toString()}'),
                  trailing: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      _addItemToCart(_products[index]);
                    },
                  ),
                );
              },
            ),
          ),
          Divider(),
          Text(
            'Cart',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_cartItems[index].product.name),
                  subtitle: Text(
                      'Quantity: ${_cartItems[index].quantity} - \$${(_cartItems[index].quantity * _cartItems[index].product.price).toString()}'),
                  trailing: IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      _removeItemFromCart(_cartItems[index].product.id);
                    },
                  ),
                );
              },
            ),
          ),
          Container(
              margin: EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Buy"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF9CAD92),
                  )))
        ],
      ),
    );
  }
}
