import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumeAttributes extends StatelessWidget {
  final String name;
  final String email;
  final String website;

  const ResumeAttributes(
      {Key? key,
      required this.name,
      required this.email,
      required this.website})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: returnArrayFields(),
        ),
      ),
    );
  }

  List<Widget> returnRowCols() {
    return [
      Row(children: const [Text('Mobile Dev')]),
      SizedBox(width: 20),
      Row(children: const [Text('OSU')]),
      SizedBox(width: 20),
      Row(children: const [Text('Remote')]),
      SizedBox(width: 20),
      Row(children: const [Text('10, Sep. 2019 - Now')])
    ];
  }

  Widget returnRow() {
    return Row(
      children: returnRowCols(),
    );
  }

  Widget returnRowDescription() {
    return Row(
      children: const [
        Expanded(
            child: Text(
                'A web developer is a programmer or a coder who specializes in, or is specifically engaged in, the development of World Wide Web applications using a client–server model'))
      ],
    );
  }

  Widget headerResume() {
    return Column(
      children: [
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        getPaddingText('https://flutter.dev', website),
        getPaddingText('mailto:$email', email)
      ],
    );
  }

  List<Widget> returnArrayFields() {
    return [
      headerResume(),
      returnRow(),
      returnRowDescription(),
      returnRow(),
      returnRowDescription(),
      returnRow(),
      returnRowDescription(),
      returnRow(),
      returnRowDescription(),
      returnRow(),
      returnRowDescription(),
      returnRow(),
      returnRowDescription(),
      returnRow(),
      returnRowDescription(),
      returnRow(),
      returnRowDescription(),
      returnRow(),
      returnRowDescription(),
      returnRow(),
      returnRowDescription()
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
