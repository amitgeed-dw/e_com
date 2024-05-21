import 'package:e_com/presentation/providers/cart_provider.dart';
import 'package:e_com/presentation/providers/category_provider.dart';
import 'package:e_com/presentation/providers/login_provider.dart';
import 'package:e_com/presentation/providers/personal_provider.dart';
import 'package:e_com/presentation/providers/product_details_provider.dart';
import 'package:e_com/presentation/screens/cart_screen.dart';
import 'package:e_com/presentation/screens/category_screen.dart';
import 'package:e_com/presentation/screens/login_screen.dart';
import 'package:e_com/presentation/screens/personal_screen.dart';
import 'package:e_com/presentation/screens/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginProvider()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
        ChangeNotifierProvider(create: (context) => CategoryProvider()),
        ChangeNotifierProvider(create: (context) => PersonalProvider()),
        ChangeNotifierProvider(create: (context) => ProductDetailProvider()),
      ],
      child:  MaterialApp(
        title: 'Flutter Demo',
        home: CartScreen(),
      ),
    );
  }
}
