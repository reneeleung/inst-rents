import 'package:flutter/material.dart';
import '../styles.dart';

class DefaultAppBar extends AppBar {
  DefaultAppBar(String titleName) :
    this.title = Text(titleName, style: Styles.navBarTitle);

  @override
  final Widget title;

  @override
  final IconThemeData iconTheme = IconThemeData(color: Colors.black);

  @override
  final Color backgroundColor = Colors.orange;

  @override
  final bool centerTitle = true;

  @override
  final double elevation = 0.5;
} 