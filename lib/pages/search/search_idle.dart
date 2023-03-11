import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../core/sizedbox.dart';
import 'title.dart';

const _imgurl =
    'https://www.themoviedb.org/t/p/w250_and_h141_face/vyOFlV1afDHb9MMwJVyON4qXbvC.jpg';

class Searchidle extends StatelessWidget {
  const Searchidle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titlewidget(title: 'Top Searches'),
        ksizedbox2,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Searchitemtile();
              },
              separatorBuilder: (context, index) {
                return ksizedbox3;
              },
              itemCount: 13),
        )
      ],
    );
  }
}

class Searchitemtile extends StatelessWidget {
  const Searchitemtile({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Row(
        children: [
          Container(
            width: size.width * 0.35,
            height: 75,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(_imgurl),
              ),
            ),
          ),
          Expanded(
              child: Text(
                'Movie Name',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
          Icon(
            Icons.play_circle_outline_rounded,
            size: 50,
          )
        ],
      ),
    );
  }
}