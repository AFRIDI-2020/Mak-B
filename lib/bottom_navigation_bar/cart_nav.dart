import 'package:flutter/material.dart';

class CartNav extends StatefulWidget {
  const CartNav({Key? key}) : super(key: key);

  @override
  _CartNavState createState() => _CartNavState();
}

class _CartNavState extends State<CartNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('cart')),
    );
  }
}
