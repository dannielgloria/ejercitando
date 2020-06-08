
import 'package:ejercitando/widgets/cart.dart';
import 'package:ejercitando/widgets/page.dart';
import 'package:ejercitando/widgets/pager.dart';

import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (context) => LoginScreen(),
    );
  }


  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
  with SingleTickerProviderStateMixin {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: MenuPager(
          // children: Children(
          //             title: "1, 2, 3 EJERCITANDO"+'\n'+"MI CUERPO Y MENTE",
          //             background: intro.background,
          //             child: CardItem(
          //               child: IntroWidget(
          //                 intro: intro,
          //                 theme: intro.background,
          //               ),
          //             ),
          //           ),
              
              
        ),
      ),
    );
  }
}