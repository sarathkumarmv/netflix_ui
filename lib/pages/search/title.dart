import 'package:flutter/cupertino.dart';

class titlewidget extends StatelessWidget {
  const titlewidget({
    required this.title,
    Key? key,
  }) : super(key: key);

  final title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}