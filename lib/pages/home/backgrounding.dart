import 'package:flutter/material.dart';
import 'home_page.dart';

class Backgroundimg extends StatelessWidget {
  const Backgroundimg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            decoration: const BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/kAUI0oOWZbGAQMmv7WM6scvoE34.jpg"))),
            width: double.infinity,
            height: 600),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Addandinfo(
                text: "My List",
                icon: Icons.add,
              ),
              Playicon(),
              Addandinfo(
                text: "Info",
                icon: Icons.info_outline,
              ),
            ],
          ),
        )
      ],
    );
  }
}