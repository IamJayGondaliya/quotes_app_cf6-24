import 'package:flutter/material.dart';
import 'package:quotes_app/utils/quote_utils.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quotes App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: allQuotes
                  .map(
                    (e) => Card(
                      child: ListTile(
                        title: Text(
                          e.quote,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(e.author),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
