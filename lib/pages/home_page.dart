import 'package:ecommerce_app/components/bottom_nav_bar.dart';
import 'shop_page.dart';
import 'package:flutter/material.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Variável de controle para bottom nav bar
  int _iSelectedIndex = 0;

  // Metodo para atualizar variável de index selecionado
  void navigateBottomBar(int index) {
    setState(() {
      _iSelectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),

    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(
                'lib/images/nike_logo.png',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: _pages[_iSelectedIndex],
    );
  }
}
