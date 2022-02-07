import 'package:flutter/material.dart';
import 'components/buisness_card.dart';

class MyApp extends StatelessWidget {
  final String title;
  const MyApp({Key? key, required this.title}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BuisnessCard(title: title),
    );
  }
}
