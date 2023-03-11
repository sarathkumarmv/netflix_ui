import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../core/colors.dart';
import '../../core/sizedbox.dart';
import '../../widget/main_title_card.dart';
import 'backgrounding.dart';
import 'number_card_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  ValueNotifier<bool> scrollnotifier = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ValueListenableBuilder(
          valueListenable: scrollnotifier,
          builder: (BuildContext context, bool value, Widget? child) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                if (direction == ScrollDirection.reverse) {
                  scrollnotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollnotifier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  ListView(
                    children: const [
                      Backgroundimg(),
                      maintitlecard(title: "Released in the past year"),
                      maintitlecard(title: "Trending Now"),
                      numbercardwidget(),
                      maintitlecard(title: "Tense Dramas"),
                      maintitlecard(title: "South Indain Cinemas"),
                    ],
                  ),
                  scrollnotifier.value == true ? TopTitleContainer() : ksizedbox
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class TopTitleContainer extends StatelessWidget {
  const TopTitleContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 1000),
      height: 90,
      width: double.infinity,
      color: Colors.black.withOpacity(0.3),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 60,
                width: 80,
                child: Image.network(
                  "https://www.geekslop.com/wp-content/uploads/2020/06/netflix-logo-letter-n.png",
                  height: 30,
                  width: 30,
                  fit: BoxFit.fill,
                ),
              ),
              Spacer(),
              const Icon(
                Icons.cast,
                color: kcolorwhite,
                size: 30,
              ),
              ksizedbox,
              Container(
                height: 25,
                width: 30,
                color: Colors.amber,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              toptextwidger(text: "TV Show"),
              toptextwidger(text: "Movies"),
              toptextwidger(text: "Categores"),
            ],
          ),
        ],
      ),
    );
  }
}

class toptextwidger extends StatelessWidget {
  const toptextwidger({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    );
  }
}

class Addandinfo extends StatelessWidget {
  const Addandinfo({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        Padding(
          padding: const EdgeInsets.only(top: 7),
          child: Text(
            text,
            style: TextStyle(fontSize: 17, color: Colors.grey.shade400),
          ),
        )
      ],
    );
  }
}

class Playicon extends StatelessWidget {
  const Playicon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style:
      ButtonStyle(backgroundColor: MaterialStateProperty.all(kcolorwhite)),
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow,
        color: backgrroundcolor,
      ),
      label: const Padding(
        padding: EdgeInsets.only(right: 7),
        child: Text(
          'Play',
          style:
          TextStyle(fontWeight: FontWeight.bold, color: backgrroundcolor),
        ),
      ),
    );
  }
}