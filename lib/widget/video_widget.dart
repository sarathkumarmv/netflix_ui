import 'package:flutter/material.dart';

class Videowidget extends StatelessWidget {
  const Videowidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Image.network(
            "https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/kpUre8wWSXn3D5RhrMttBZa6w1v.jpg",
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 12,
          right: 12,
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.5),
            radius: 20,
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.volume_off,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}