import 'package:flutter/material.dart';
import 'package:call_app/components/card_attributes.dart';

class BuisnessCard extends StatelessWidget {
  final String title;
  final String nameInput = 'Mateo Estrada';
  final String numberInput = '555 555 55555';
  final String titleNameInput = 'Software Engineer';
  final String emailInput = 'mateo@gmail.com';
  final String websiteInput = 'mateoestrada.org';
  const BuisnessCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: CardAttributes(
          name: nameInput,
          number: numberInput,
          titleName: titleNameInput,
          email: emailInput,
          website: websiteInput,
        ));
  }
}
