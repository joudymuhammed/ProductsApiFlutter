import 'package:flutter/material.dart';
import 'package:joudy_0522053/Providers/ProductsProvider.dart';
import 'package:joudy_0522053/Providers/RegistrationProvider.dart';
import 'package:joudy_0522053/Screens/LoginPage.dart';
import 'package:joudy_0522053/Screens/RegistrationPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers:
    [
      ChangeNotifierProvider(create: (context) => RegistrationProvider(),),
      ChangeNotifierProvider(create: (context) => ProductsProvider(),)
    ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignUpPage(),
    ),
    );
  }
}

