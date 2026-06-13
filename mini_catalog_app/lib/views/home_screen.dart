import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Row(
          children: [
            const Text(
              "Discover",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Spacer(),

            IconButton(
              icon: const Icon(Icons.shopping_bag_outlined),
              iconSize: 32,
              onPressed: () {},
              )
          ],
        ))
    );
  }
}