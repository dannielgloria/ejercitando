import 'package:flutter/material.dart';

class Pages extends StatelessWidget {
  final LinearGradient background;
  final String title;
  final String icon;
  final Widget child;

  const Pages({
    @required this.background,
    @required this.title,
    @required this.icon,
    @required this.child
  });

  @override
  Widget build(BuildContext context) {
    return child;
  }
}