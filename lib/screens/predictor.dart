import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

List<String> listOfMessages = [
  'Calling Next Monday',
  'We Have Decided...',
  'Hello?',
  'Please take this coding text...',
  'You have been choosen for...',
  'We will email you!',
  'Your application has been seen',
  'You got the Job!',
  'Congratulations!'
];

class ChangeText extends StatefulWidget {
  const ChangeText({Key? key}) : super(key: key);

  @override
  _ChangeTextState createState() => _ChangeTextState();
}

class _ChangeTextState extends State<ChangeText> {
  String textToShow = '';
  void changeMessage() {
    final _random = Random();
    setState(() {
      textToShow = listOfMessages[_random.nextInt(listOfMessages.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      const Text('Will I get a call back?',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
      GestureDetector(
        onTap: () => changeMessage(),
        child: const Text('(..Press..)',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
      ),
      Text(textToShow,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
    ]);
  }
}
