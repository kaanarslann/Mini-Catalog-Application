import 'package:flutter/material.dart';
import 'package:mini_catalog_app/models/products_model.dart';

class ProductDetailScreen extends StatefulWidget {
  
  final Data product;
  
  const ProductDetailScreen({super.key, required this.product});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Back")),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            widget.product.image ?? "",
            height: 350,
            width: double.infinity,
            fit: BoxFit.cover,
          )
        ],
      ),

    );
  }
}