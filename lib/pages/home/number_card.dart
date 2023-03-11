import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../core/colors.dart';


class Numbercard extends StatelessWidget {
  const Numbercard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 250,
            ),
            Container(
              width: 140,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: kradius,
                  color: Colors.amber,
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://www.themoviedb.org/t/p/w220_and_h330_face/ekZobS8isE6mA53RAiGDG93hBxL.jpg"))),
            ),
          ],
        ),
        Positioned(
          left: 4,
          bottom: 10,
          child: BorderedText(
            strokeColor: Colors.white.withOpacity(0.7),
            strokeWidth: 2,
            child: Text(
              "${index + 1}",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 93,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.red),
            ),
          ),
        ),
      ],
    );
  }
}