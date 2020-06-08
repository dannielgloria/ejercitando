import 'package:ejercitando/routes/routes.dart';
import 'package:flutter/material.dart';

class EjercitandoCyM extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      initialRoute: 'splash',
      routes: getApplicationRoutes(),
    );
  }
} 
  
