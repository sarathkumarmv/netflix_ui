import 'package:flutter/material.dart';
import 'package:netflix/widget/video_widget.dart';

import '../core/sizedbox.dart';
import '../pages/home/home_page.dart';

class MyTabBarView1 extends StatelessWidget {
  const MyTabBarView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 7),
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Commingsoonwidget();
        },
        // children: [
        //   ksizedbox2,
        //   Commingsoonwidget(),
        // ],
      ),
    );
  }
}

class Commingsoonwidget extends StatelessWidget {
  const Commingsoonwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'FEB',
                style: TextStyle(color: Colors.grey.shade600),
              ),
              Text(
                '12',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              )
            ],
          ),
          width: 60,
          height: 200,
        ),
        Expanded(
          child: Container(
            height: 400,
            // color: Colors.amber,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Videowidget(),
                ksizedbox2,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'TALL GIRL 2',
                      style: TextStyle(fontSize: 30),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Addandinfo(
                            text: "Remind Me",
                            icon: Icons.notifications_none,
                          ),
                          ksizedbox,
                          Addandinfo(
                            text: "Info",
                            icon: Icons.info_outline,
                          ),
                          ksizedbox,
                        ],
                      ),
                    ),
                  ],
                ),
                Text('Coming on friday'),
                ksizedbox3,
                Text('Tall Girl 2',
                    style:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ksizedbox2,
                Text(
                  "Landing the lead in the school musical is a dream come true for jodi, until the pressure sends her confidance - and her relationship - into a\ntailspain.",
                  style: TextStyle(color: Colors.grey.shade500),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}