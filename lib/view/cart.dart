import 'package:flutter/material.dart';
import 'package:praktikum_1/widget/navigation.dart';
import 'package:praktikum_1/widget/card.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final List<Map<String, dynamic>> cartItems = [
    {"name": "Produk A", "price": 50000, "quantity": 2},
    {"name": "Produk B", "price": 75000, "quantity": 1},
    {"name": "Produk C", "price": 120000, "quantity": 3},
    {"name": "Produk C", "price": 120000, "quantity": 3},
    {"name": "Produk C", "price": 120000, "quantity": 3},
    {"name": "Produk C", "price": 120000, "quantity": 3},
    {"name": "Produk C", "price": 120000, "quantity": 3},
    {"name": "Produk C", "price": 120000, "quantity": 3},
    {"name": "Produk C", "price": 120000, "quantity": 3},
    {"name": "Produk C", "price": 120000, "quantity": 3},
    {"name": "Produk C", "price": 120000, "quantity": 3},
    {"name": "Produk C", "price": 120000, "quantity": 3},
    {"name": "Produk C", "price": 120000, "quantity": 3},
    {"name": "Produk C", "price": 120000, "quantity": 3},
    {"name": "Produk C", "price": 120000, "quantity": 3},
    {"name": "Produk C", "price": 120000, "quantity": 3},
    {"name": "Produk C", "price": 120000, "quantity": 3},
    {"name": "Produk C", "price": 120000, "quantity": 3},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.zero,
          child: AppBar(
            scrolledUnderElevation: 0.0,
            backgroundColor: Colors.white,
          ),
        ),
        body: ListView.builder(
          itemCount: cartItems.length,
          itemBuilder: (context, index) {
            final item = cartItems[index];
            return CartItemCard(item: item);
          },
        ),
        bottomNavigationBar: const CustomNavigationBar(selectedIndex: 1));
  }
}
