import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class CardAttributes extends StatelessWidget {
  final String name;
  final String number;
  final String titleName;
  final String email;
  final String website;
  const CardAttributes(
      {Key? key,
      required this.name,
      required this.number,
      required this.titleName,
      required this.email,
      required this.website})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: returnArrayFields(),
          ),
        ),
      ),
    );
  }

  List<Widget> returnArrayFields() {
    return [
      Image.asset('assets/avatar.jpeg'),
      Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      getPaddingText('sms:5555555555', number),
      Text(titleName),
      getPaddingText('https://flutter.dev', website),
      getPaddingText('mailto:$email', email)
    ];
  }

  Widget getPaddingText(String urlType, String textValue) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () => launch(urlType),
        child: Text(textValue),
      ),
    );
  }
}
