import 'package:call_app/screens/buisness_card.dart';
import 'package:call_app/screens/predictor.dart';
import 'package:call_app/screens/resume.dart';
import 'package:flutter/material.dart';

class MainTabController extends StatelessWidget {
  const MainTabController({Key? key}) : super(key: key);
  static const tabs = [
    Tab(text: 'Buisness Card'),
    Tab(text: 'Resume'),
    Tab(text: 'Predictor')
  ];

  final screens = const [BuisnessCard(), Resume(), Predictor()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
            appBar: AppBar(
                title: const Text('Call Me Maybe'),
                bottom: const TabBar(
                  tabs: tabs,
                )),
            body: TabBarView(children: screens)));
  }
}
