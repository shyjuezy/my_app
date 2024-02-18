import 'package:flutter/material.dart';

import 'package:my_app/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello World'),
        ),
        body: const GradientContainer(
          Colors.blue,
          Colors.green,
        ),
      ),
    );
  }
}
