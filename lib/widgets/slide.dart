import 'package:ejercitando/models/slides.dart';
import 'package:ejercitando/screens/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SlideWidget extends StatelessWidget {
  final LinearGradient theme;
  final Slide slide;
  final VoidCallback increment;
  final VoidCallback decrement;

  SlideWidget({
    @required this.slide,
    @required this.theme,
    this.decrement,
    this.increment
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(slide.name,
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w700,
            fontFamily: 'Sport')),
        Padding(
          
          padding: EdgeInsets.only(top: 5.0,left: 5.0, right: 5.0),
          child: Text(slide.description,
          textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontFamily: 'Dosis',
              fontWeight: FontWeight.w400)
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              SvgPicture.asset(
                slide.image,
                width: 170.0,
                height: 170.0,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: theme.colors[0]
              ),
              width: 70.0,
              height: 1.0,
            ),
            Container(
              child: OutlineButton(
                borderSide: BorderSide(color: theme.colors[0]),
                onPressed: () => Navigator.of(context).pushNamed('${slide.rute}'),
                shape: StadiumBorder(),
                child: SizedBox(
                  width: 60.0,
                  height: 45.0,
                  child: Center(
                    child: Text('${slide.nameButton}',
                    style: TextStyle(
                      color: theme.colors[0],
                      fontSize: 17.0,
                      fontWeight: FontWeight.w400
                    ),
                    textAlign: TextAlign.center)),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: theme.colors[0]
              ),
              width: 70,
              height: 1.0,
            ),
          ],
        ),
      ],
    );
  }
}