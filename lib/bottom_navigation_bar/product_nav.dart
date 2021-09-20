import 'package:flutter/material.dart';

class ProductNav extends StatefulWidget {
  const ProductNav({Key? key}) : super(key: key);

  @override
  _ProductNavState createState() => _ProductNavState();
}

class _ProductNavState extends State<ProductNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('product')),
    );
  }
}
