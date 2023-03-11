import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/widget/video_widget.dart';

import '../core/sizedbox.dart';
import '../pages/home/home_page.dart';

class EveryoneWidget extends StatelessWidget {
  const EveryoneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return NewHotContainer();
        },
      ),
    );
  }
}

class NewHotContainer extends StatelessWidget {
  const NewHotContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Friends',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ksizedbox2,
          Text(
            "This hit sitcom follows the merry misadventures of six 20-something pals as they navigate the fitfalls of work, life and love in 1990s Manhattan.",
            style: TextStyle(color: Colors.grey.shade500),
          ),
          ksizedbox2,
          Videowidget(),
          ksizedbox2,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Addandinfo(
                text: "Share",
                icon: Icons.send,
              ),
              ksizedbox,
              Addandinfo(
                text: "My List",
                icon: Icons.add,
              ),
              ksizedbox,
              Addandinfo(
                text: "Play",
                icon: Icons.play_arrow,
              ),
              ksizedbox
            ],
          )
        ],
      ),
    );
  }
}