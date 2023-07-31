import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray400 = fromHex('#b1b1b1');

  static Color gray500 = fromHex('#91979e');

  static Color blueGray400 = fromHex('#888888');

  static Color deepPurple800 = fromHex('#4f378b');

  static Color gray90033 = fromHex('#33131117');

  static Color indigo50 = fromHex('#e5e6eb');

  static Color gray900 = fromHex('#141218');

  static Color gray90001 = fromHex('#1d2129');

  static Color deepPurple500 = fromHex('#6750a4');

  static Color red200 = fromHex('#ec8c8c');

  static Color amber100 = fromHex('#faf3ad');

  static Color deepPurple400 = fromHex('#8267b7');

  static Color deepPurple100 = fromHex('#d0bcff');

  static Color gray300 = fromHex('#e6e0e9');

  static Color whiteA70033 = fromHex('#33ffffff');

  static Color deepPurple50 = fromHex('#eaddff');

  static Color whiteA70066 = fromHex('#66ffffff');

  static Color whiteA700Cc = fromHex('#ccffffff');

  static Color gray40019 = fromHex('#19c0c0c0');

  static Color whiteA70014 = fromHex('#14ffffff');

  static Color black900 = fromHex('#000000');

  static Color whiteA70019 = fromHex('#19ffffff');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray70033 = fromHex('#335c5c5c');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
