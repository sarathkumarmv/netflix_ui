import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Videolist extends StatelessWidget {
  const Videolist({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          //height: double.infinity,
          color: Colors.accents[index % Colors.accents.length],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.4),
                  radius: 30,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.volume_off,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/ujr5pztc1oitbe7ViMUOilFaJ7s.jpg"),
                    ),
                    VideoActions(icon: Icons.emoji_emotions, title: 'LOL'),
                    VideoActions(icon: Icons.add, title: 'My list'),
                    VideoActions(icon: Icons.share, title: 'Share'),
                    VideoActions(icon: Icons.play_arrow, title: 'play')
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoActions extends StatelessWidget {
  const VideoActions({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Column(
        children: [
          Icon(
            icon,
            size: 30,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}