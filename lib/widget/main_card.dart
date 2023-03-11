import 'package:flutter/material.dart';

import '../core/colors.dart';

class maincard extends StatelessWidget {
  const maincard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: 140,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: kradius,
            color: Colors.amber,
            image: const DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/ujr5pztc1oitbe7ViMUOilFaJ7s.jpg"))),
      ),
    );
  }
}