import 'package:flutter/material.dart';
import 'package:greenfiy/app_const/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

class LightText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  const LightText(
      {super.key,
      required this.text,
      this.textOverflow,
      this.fontSize = 15,
      this.fontWeight = FontWeight.w500,
      this.color = AppColor.grey535252,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: textOverflow,
      textAlign: textAlign,
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
