import 'package:flutter/material.dart';
import 'package:call_app/components/card_attributes.dart';

class BuisnessCard extends StatelessWidget {
  final String nameInput = 'Mateo Estrada';
  final String numberInput = '555 555 55555';
  final String titleNameInput = 'Software Engineer';
  final String emailInput = 'customerservice@flutter.com';
  final String websiteInput = 'Flutter.dev';
  const BuisnessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardAttributes(
      name: nameInput,
      number: numberInput,
      titleName: titleNameInput,
      email: emailInput,
      website: websiteInput,
    );
  }
}
