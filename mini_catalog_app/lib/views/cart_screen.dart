import 'package:flutter/material.dart';
import 'package:mini_catalog_app/components/cart_item_tile.dart';
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
    final cartProducts = widget.products
        .where((product) => widget.cartIds.contains(product.id))
        .toList();

    return Scaffold(
      appBar: AppBar(title: Text("Cart")),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: cartProducts.length,
                  itemBuilder: (context, index) {
                    final item = cartProducts[index];
        
                    return CartItemTile(
                      item: item,
                      onRemove: () {
                        setState(() {
                          widget.cartIds.remove(item.id);
                        });
                      },
                    );
                  },
                ),
              ),
        
              SizedBox(height: 10),

              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade400),
                ),
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Icon(Icons.info_outlined, color: Colors.grey.shade600),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In placerat pellentesque magna.",
                        style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 13,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )
                ),
                child: Text(
                  "Checkout",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                  )
                ),
            ],
          ),
        ),
      ),
    );
  }
}
