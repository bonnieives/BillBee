import 'package:flutter/material.dart';

import '../styles/button_styles.dart';

class CustomStadiumButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final TextStyle textStyle;
  final Color backgroundColor;

  const CustomStadiumButton({
    Key? key,
    required this.label,
    required this.onPressed,
    required this.width,
    required this.height,
    required this.textStyle,
    required this.backgroundColor,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(label, style: textStyle,),
        style: ElevatedButton.styleFrom(
          shape: stadiumBorder,
          side: standardButtonOutline,
          backgroundColor: backgroundColor,
        ),
      ),
    );
  }
}