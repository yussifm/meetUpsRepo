
import 'package:flutter/material.dart';

class TileText extends StatelessWidget {
  final String txt;
  final Color txtColor;
  final double txtSize;
  final FontWeight txtFontWeight;
  const TileText({
    super.key,
    required this.txt,
    required this.txtColor,
    required this.txtSize,
    required this.txtFontWeight,
    
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        color: txtColor,
        fontSize: txtSize,
        fontWeight: txtFontWeight,
      ),
    );
  }
}
