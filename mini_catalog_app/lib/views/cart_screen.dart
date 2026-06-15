import 'package:flutter/material.dart';
import 'package:mini_catalog_app/models/products_model.dart';

class CartScreen extends StatefulWidget {
  
  final Set<int> cartIds;
  final List<Data> products;
  
  const CartScreen({super.key, required this.cartIds, required this.products});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart")),
    );
  }
}