import 'package:flutter/material.dart';

import '../../core/sizedbox.dart';
import '../../widget/main_title.dart';
import 'number_card.dart';

class numbercardwidget extends StatelessWidget {
  const numbercardwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titles(title: "Top 10 Tv Shows In India Today"),
        ksizedbox2,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                10,
                    (index) => Numbercard(
                  index: index,
                )),
          ),
        ),
      ],
    );
  }
}