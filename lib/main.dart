import 'package:flutter/material.dart';
import 'package:shopping_app_new_ui/screens/cart_page.dart';
import 'package:shopping_app_new_ui/screens/home_page.dart';
import 'package:shopping_app_new_ui/screens/item_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (context) => HomePage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
      },
    );
  }
}
