

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HexColor{

  static Color fromHex(String hex_color_code){
    final buffer = StringBuffer();
    if(hex_color_code.length<=7) {
      buffer.write('ff');
      buffer.write(hex_color_code.replaceFirst('#', ''));
    }
    return Color(int.parse(buffer.toString(),radix: 16));
  }
}
