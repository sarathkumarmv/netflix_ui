import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../core/colors.dart';
import '../core/sizedbox.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          color: kcolorwhite,
          size: 30,
        ),
        ksizedbox,
        Container(
          height: 25,
          width: 30,
          color: Colors.amber,
        )
      ],
    );
  }
}