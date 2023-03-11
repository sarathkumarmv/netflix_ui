import 'dart:math';

import 'package:flutter/material.dart';
import '../core/colors.dart';
import '../core/sizedbox.dart';
import '../widget/app_bar_widget.dart';

class Download extends StatelessWidget {
  Download({super.key});
  final _widgetlist = [
    const Smartdownloads(),
    const Section2(),
    const Sectoin3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: AppBarWidget(title: 'Downloads'),
          )),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 20,
          );
        },
        itemCount: _widgetlist.length,
        itemBuilder: (context, index) {
          return _widgetlist[index];
        },
      ),
    );
  }
}

class Smartdownloads extends StatelessWidget {
  const Smartdownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.settings),
        ksizedbox,
        Text('Smart Downloads'),
      ],
    );
  }
}

class downloadimage extends StatelessWidget {
  const downloadimage(
      {Key? key,
        required this.size,
        required this.margin,
        required this.img,
        required this.angle,
        required this.csize})
      : super(key: key);

  final Size size;
  final double angle;
  final EdgeInsets margin;
  final String img;
  final double csize;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        height: size.width * csize,
        width: size.width * 0.4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: backgrroundcolor,
            image: DecorationImage(fit: BoxFit.fill, image: NetworkImage(img))),
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Indroducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        ksizedbox2,
        const Text(
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey),
            'We will download a personalised selection of\nmovies and shows for you. so there is\nalways something to watch on your\ndevice'),
        SizedBox(
          height: size.width,
          width: size.width,
          //Scolor: Colors.white,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  radius: size.width * 0.35,
                ),
              ),
              downloadimage(
                  csize: 0.5,
                  angle: -20,
                  size: size,
                  margin: const EdgeInsets.only(right: 130, bottom: 30),
                  img:
                  "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/ujr5pztc1oitbe7ViMUOilFaJ7s.jpg"),
              downloadimage(
                  csize: 0.5,
                  angle: 20,
                  size: size,
                  margin: const EdgeInsets.only(left: 130, bottom: 30),
                  img:
                  "https://www.themoviedb.org/t/p/w220_and_h330_face/ekZobS8isE6mA53RAiGDG93hBxL.jpg"),
              downloadimage(
                  csize: 0.56,
                  angle: 0,
                  size: size,
                  margin: const EdgeInsets.only(left: 0),
                  img:
                  "https://www.themoviedb.org/t/p/w220_and_h330_face/3r4LYFuXrg3G8fepysr4xSLWnQL.jpg"),
            ],
          ),
        ),
      ],
    );
  }
}

class Sectoin3 extends StatelessWidget {
  const Sectoin3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            color: Colors.blue.shade700,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Setup',
                style: TextStyle(
                    color: kcolorwhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        ksizedbox2,
        MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          color: kcolorwhite,
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  color: backgrroundcolor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}