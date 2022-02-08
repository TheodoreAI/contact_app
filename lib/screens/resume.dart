import 'package:flutter/material.dart';
import 'package:call_app/components/resume_attributes.dart';

class Resume extends StatelessWidget {
  final String nameInput = 'Mateo Estrada';
  final String emailInput = 'customerservice@flutter.com';
  final String websiteInput = 'Flutter.dev';

  const Resume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResumeAttributes(
        name: nameInput, email: emailInput, website: websiteInput);
  }
}
