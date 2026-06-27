import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/set_state/set_state_example_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: const SetStateExample1(),
    );
  }
}

