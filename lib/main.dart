import 'package:flutter/material.dart';
import 'package:quotes_app/utils/quote_utils.dart';
import 'package:quotes_app/views/home_page/home_page.dart';

/*

  - MVC
    - Models - D
    - Views
    - Controllers
    --------------
    - utils - D
    - services
    - assets - D
    - presentations
    - pages
    - config
    - routes
    - extras

*/

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
      },
    );
  }
}
