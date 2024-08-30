import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:quotes_app/utils/quote_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (val, res) async {
        if (val) {
          return;
        }
        bool canPop = await showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => AlertDialog(
            title: const Text("Alert Dialogue !!"),
            content: const Text(
              "Are you sure to EXIT ?",
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    true,
                  );
                },
                child: const Text("YES"),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    false,
                  );
                },
                child: const Text("NO"),
              ),
            ],
          ),
        );

        if (canPop && context.mounted) {
          exit(0);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Quotes App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => SimpleDialog(
                        title: const Text("Alert !!"),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              lorem(
                                words: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: const Text("Simple Dialogue"),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) => AlertDialog(
                        title: const Text("Alert Dialogue !!"),
                        content: Text(
                          lorem(
                            words: 10,
                            paragraphs: 1,
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("YES"),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("NO"),
                          ),
                        ],
                      ),
                    );
                  },
                  child: const Text("Confirmation Dialogue"),
                ),
                ElevatedButton(
                  onPressed: () {
                    showGeneralDialog(
                      context: context,
                      pageBuilder: (context, a1, a2) => Scaffold(
                        backgroundColor: Colors.black.withOpacity(0.3),
                        body: Column(
                          children: [
                            const Spacer(),
                            const FlutterLogo(
                              size: 200,
                            ),
                            const Spacer(),
                            Ink(
                              color: Colors.blue,
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                splashColor: Colors.amber,
                                child: Container(
                                  height: 80,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "OK, Continue !!",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: const Text("Full Screen Dialogue"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
