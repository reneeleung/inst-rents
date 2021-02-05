import 'package:flutter/material.dart';

class Styles {
  static const _textSizeLarge = 25.0;
  static const _textSizeSlightLarge = 20.0;
  static const _textSizeDefault = 16.0;
  static const horizontalPaddingDefault = 12.0;
  static final Color _textColorStrong = Color(0xff000000);
  static final Color _textColorFaint = Color(0xff999999);
  static final Color _textColorDefault = Color(0xff666666);
  static final Color textColorBright = Color(0xffffffff);
  static final Color accentColor = Color(0xffff0000);
  static final String _fontNameDefault = 'Muli';
  static final navBarTItle = TextStyle(
    fontFamily: _fontNameDefault
  );

  static final headerLarge = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeLarge,
    color: _textColorStrong
  );

  static final textDefault = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeDefault,
    color: _textColorDefault
  );

  static final textCTAButton = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeLarge,
    color: textColorBright,
  );

  static final navBarTitle = TextStyle(
    fontFamily: _fontNameDefault,
  );

  static final instrumentHeaderOwner = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeLarge,
    color: _textColorStrong,
  );
  static final instrumentHeaderName = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeLarge,
    fontWeight: FontWeight.bold,
    color: Colors.orange,
  );
  static final instrumentHeaderBuskings = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeSlightLarge,
    fontStyle: FontStyle.italic,
    color: _textColorFaint,
  );
} 