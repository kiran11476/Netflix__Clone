import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/number_card.dart';

import 'package:netflix/widgets/main_title_card.dart';
import 'package:netflix/widgets/text_ui.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 600,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://flxt.tmsimg.com/assets/p185846_b_v8_ad.jpg'))),
              ),
              Positioned(
                bottom: 15,
                right: 0,
                left: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Icon(
                          Icons.add,
                          size: 30,
                          color: Colors.white,
                        ),
                        Text(
                          'My List',
                          style: TextStyle(fontSize: 22),
                        )
                      ],
                    ),
                    _icon_button(),
                    Column(
                      children: const [
                        Icon(
                          Icons.info_outline,
                          size: 25,
                          color: Colors.white,
                        ),
                        Text(
                          'Info',
                          style: TextStyle(fontSize: 22),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const MainTitlecardx(title: "Realesed in the passed year"),
          const MainTitlecardx(
            title: "Trending Now",
          ),
          Column(
            children: [
              const MainTile(title: "Top 10 TV shows in India today"),
              LimitedBox(
                maxHeight: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:
                      List.generate(10, (index) => NumberCard(index: index)),
                ),
              )
            ],
          ),
          const MainTitlecardx(title: " Tense Dramas"),
          const MainTitlecardx(title: "South Indian cinema"),
        ],
      ),
    );
  }

  TextButton _icon_button() {
    return TextButton.icon(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white)),
        onPressed: () {},
        icon: const Icon(
          Icons.play_arrow,
          size: 25,
          color: Colors.black,
        ),
        label: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "play",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ));
  }
}
