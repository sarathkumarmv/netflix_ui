import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../core/colors.dart';
import '../core/sizedbox.dart';
import 'coming_soon.dart';
import 'everyone_widget.dart';

class NewandHote extends StatelessWidget {
  const NewandHote({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            const Icon(
              Icons.cast,
              color: kcolorwhite,
              size: 30,
            ),
            ksizedbox,
            Container(
              height: 20,
              width: 30,
              color: Colors.amber,
            ),
          ],
          title: Text(
            'New & Hot',
            style: const TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
          ),
          bottom: TabBar(
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              unselectedLabelColor: kcolorwhite,
              labelColor: backgrroundcolor,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: kcolorwhite),
              tabs: const [
                Tab(
                  text: '🍿 Coming soon',
                ),
                Tab(
                  text: '👀 Everyone watching',
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            MyTabBarView1(),
            EveryoneWidget(),
          ],
        ),
      ),
    );
  }
}