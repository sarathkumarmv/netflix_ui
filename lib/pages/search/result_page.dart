import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/pages/search/title.dart';

import '../../core/sizedbox.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titlewidget(
          title: 'Movies & TV',
        ),
        ksizedbox2,
        Expanded(
          child: GridView.count(
            childAspectRatio: 1 / 1.4,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            children: List.generate(20, (index) => MainCard()),
            crossAxisCount: 3,
            shrinkWrap: true,
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/ujr5pztc1oitbe7ViMUOilFaJ7s.jpg"),
        ),
      ),
    );
  }
}