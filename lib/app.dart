import 'package:flutter/material.dart';
import 'components/main_tab_controler.dart';

// BuisnessCard(title: title)
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainTabController(),
    );
  }
}
