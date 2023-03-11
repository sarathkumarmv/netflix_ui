import 'package:flutter/material.dart';
import 'package:netflix/pages/fast_laugh/video_list.dart';

class FastLaugh extends StatelessWidget {
  const FastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: PageView(
              scrollDirection: Axis.vertical,
              children: List.generate(
                  10,
                      (index) => Videolist(
                    index: index,
                  )),
            )));
  }
}