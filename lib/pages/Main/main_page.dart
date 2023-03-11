import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../downloads/downloads.dart';
import '../../widget/new_and_hot.dart';
import '../fast_laugh/fast_laugh.dart';
import '../home/home_page.dart';
import '../search/search.dart';
import 'navigation_bar.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final pages = [
    HomePage(),
    NewandHote(),
    FastLaugh(),
    Search(),
    Download(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const Navigationbar(),
        backgroundColor: backgrroundcolor,
        body: SafeArea(
          child: ValueListenableBuilder(
            valueListenable: indexchangenotifier,
            builder: (BuildContext context, int value, Widget? child) {
              return pages[value];
            },
          ),
        ));
  }
}