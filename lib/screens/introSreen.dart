import 'package:ejercitando/models/slideInfo.dart';
import 'package:ejercitando/widgets/cart.dart';
import 'package:ejercitando/widgets/page.dart';
import 'package:ejercitando/widgets/pager.dart';
import 'package:ejercitando/widgets/slide.dart';
import 'package:flutter/material.dart';


class IntroScreen extends StatefulWidget {

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>
  with SingleTickerProviderStateMixin {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: MenuPager(
          children: SlideInfo.slideInfo
              .map(
                (slide) => Pages(
                      title: "1, 2, 3 EJERCITANDO"+'\n'+"MI CUERPO Y MENTE",
                      background: slide.background,
                      icon: slide.bottomImage,
                      child: CardItem(
                        child: SlideWidget(
                          slide: slide,
                          theme: slide.background,
                        ),
                      ),
                    ),
              )
              .toList(),
        ),
      ),
    );
  }
}