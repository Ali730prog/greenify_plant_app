import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../app_const/app_color.dart';

class BoldText extends StatefulWidget {
  final String text;
  final double? textsize;
  final Color? color;
  final FontWeight? fontweight;
  final  TextOverflow? textOverflow;
  const BoldText(
      {super.key,
        required this.text,
        this.textOverflow,
        this.textsize=26.0,
        this.color=AppColor.green118844,
        this.fontweight=FontWeight.w700,});

  @override
  State<BoldText> createState() => _BoldTextState();
}

class _BoldTextState extends State<BoldText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: widget.textOverflow,
      widget.text,
      style: GoogleFonts.poppins(
        fontWeight: widget.fontweight,
        fontSize:widget.textsize,
        color: widget.color,
      ),
    );
  }
}