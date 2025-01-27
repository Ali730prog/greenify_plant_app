import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenfiy/app_const/app_color.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final Color? color;
  final Color? textColor;
  final Color? borderColor;
  final VoidCallback? ontap;
  final double? border;

  const CommonButton(
      {super.key,
      required this.text,
      this.borderColor = AppColor.green118844,
      this.textColor = AppColor.whiteFFFFFF,
      this.width = double.infinity,
      this.height = 0.07,
      this.color = AppColor.green118844,
      this.ontap,
      this.border = 09,
      });

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: ontap,
      child: Container(
          decoration: BoxDecoration(color: color,
          borderRadius: BorderRadius.circular(border!),
            border: Border.all(width: 2,color: borderColor !)
          ),
          width: w * width!,
          height: height! * h,
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: textColor,
              ),
            ),
          )),
    );
  }
}
