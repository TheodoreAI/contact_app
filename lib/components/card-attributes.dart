import 'package:flutter/cupertino.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            Text(number),
            Text(titleName),
            Text(website),
            Text(email)
          ],
        ),
      ),
    );
  }
}
