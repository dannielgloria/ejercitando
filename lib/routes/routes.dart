import 'package:ejercitando/screens/introSreen.dart';
import 'package:ejercitando/screens/loginScreen.dart';
import 'package:ejercitando/screens/splashScreen.dart';
import 'package:flutter/material.dart';


Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String , WidgetBuilder>{
    'splash'  : (BuildContext context) => SplashScreen(),
    '/'       : (BuildContext context) => IntroScreen(),
    'login'   : (BuildContext context) => LoginScreen(),
  };
}
