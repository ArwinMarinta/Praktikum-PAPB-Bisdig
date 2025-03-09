import 'package:flutter/material.dart';
import 'package:praktikum_1/widget/navigation.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.zero,
          child: AppBar(
            scrolledUnderElevation: 0.0,
            backgroundColor: Colors.white,
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Text("Halaman Keranjang"),
          ),
        ),
        bottomNavigationBar: const CustomNavigationBar(selectedIndex: 1));
  }
}
