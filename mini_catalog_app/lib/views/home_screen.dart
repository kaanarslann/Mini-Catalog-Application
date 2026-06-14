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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
              ),
          
              const SizedBox(height: 8),
          
              const Text(
                "Premium devices for your likes.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 14),

              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: "Search products",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    contentPadding: EdgeInsets.symmetric(vertical: 12),
                    
                  ),
                ),
              ),

              const SizedBox(height: 16),

              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  "https://wantapi.com/assets/banner.png",
                  height: 80,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ))
    );
  }
}