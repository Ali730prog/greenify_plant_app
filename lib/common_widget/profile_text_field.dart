// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import '../app_const/app_color.dart';
//
// class CommonProflleTextField extends StatefulWidget {
//   final String hintText;
//   final TextEditingController? textEditingController;
//   final String? prefixImage;
//   final bool isPassword;
//   final VoidCallback? ontap;
//   final String? sufixIcon;
//   final bool showDropdownIcon; // Dropdown icon ke liye flag
//   final VoidCallback? onDropdownTap; // Dropdown ke click ka handler
//
//   const CommonProflleTextField({
//     super.key,
//     required this.hintText,
//     this.prefixImage,
//     this.isPassword = false,
//     this.textEditingController,
//     this.ontap,
//     this.sufixIcon,
//     this.showDropdownIcon = false, // Default value: false
//     this.onDropdownTap,
//   });
//
//   @override
//   State<CommonProflleTextField> createState() => _CommonProflleTextFieldState();
// }
//
// class _CommonProflleTextFieldState extends State<CommonProflleTextField> {
//   bool isShowPassword = false;
//
//   @override
//   Widget build(BuildContext context) {
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//
//     return Container(
//       width: w * 0.90,
//       height: h * 0.06,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(6),
//         border: Border.all(width: 1, color: AppColor.black0000000),
//       ),
//       child: Center(
//         child: TextField(
//           controller: widget.textEditingController,
//           obscureText: widget.isPassword && !isShowPassword,
//           style: GoogleFonts.poppins(
//             fontWeight: FontWeight.w500,
//             fontSize: 16,
//             color: AppColor.black0000000,
//           ),
//           decoration: InputDecoration(
//             focusedBorder: InputBorder.none,
//             enabledBorder: InputBorder.none,
//             errorBorder: InputBorder.none,
//             border: InputBorder.none,
//             prefixIcon: widget.prefixImage != null
//                 ? Padding(
//               padding: EdgeInsets.symmetric(horizontal: 10.0),
//               child: ImageIcon(
//                 AssetImage(widget.prefixImage!),
//                 size: w * 0.06,
//                 color: AppColor.grey535252,
//               ),
//             )
//                 : null,
//             suffixIcon: widget.showDropdownIcon
//                 ? IconButton(
//               onPressed: widget.onDropdownTap,
//               icon: Icon(
//                 Icons.arrow_drop_down,
//                 color: AppColor.green118844,
//               ),
//             )
//                 : (widget.sufixIcon != null
//                 ? IconButton(
//               onPressed: widget.ontap,
//               icon: ImageIcon(
//                 AssetImage(widget.sufixIcon!),
//                 color: AppColor.green118844,
//               ),
//             )
//                 : null),
//             hintText: widget.hintText,
//             hintStyle: GoogleFonts.poppins(
//               fontWeight: FontWeight.w500,
//               fontSize: 19,
//               color: AppColor.black0000000,
//             ),
//             contentPadding: EdgeInsets.only(left: w * 0.05,bottom: h * 0.02 / 3 ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../app_const/app_color.dart';

class CommonProflleTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController? textEditingController;
  final String? prefixImage;
  final VoidCallback? ontap;
  final String? sufixIcon;
  final String? labelText;
  final bool showDropdownIcon;
  final VoidCallback? onDropdownTap;

  const CommonProflleTextField({
    super.key,
    required this.hintText,
    this.prefixImage,
    this.textEditingController,
    this.ontap,
    this.sufixIcon,
    this.showDropdownIcon = false,
    this.onDropdownTap,
    this.labelText,
  });

  @override
  State<CommonProflleTextField> createState() => _CommonProflleTextFieldState();
}

class _CommonProflleTextFieldState extends State<CommonProflleTextField> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      width: w * 0.90,
      height: h * 0.06,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border:
            Border.all(width: 1, color: AppColor.grey544C4C.withOpacity(0.4)),
      ),
      child: Center(
        child: TextField(
          controller: widget.textEditingController,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: AppColor.black0000000,
          ),

          decoration: InputDecoration(
            label: widget.labelText != null
                ? Text(widget.labelText!)
                : null,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            border: InputBorder.none,
            prefixIcon: widget.prefixImage != null
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: ImageIcon(
                      AssetImage(widget.prefixImage!),
                      size: w * 0.06,
                      color: AppColor.grey535252,
                    ),
                  )
                : null,
            suffixIcon: widget.showDropdownIcon
                ? IconButton(
                    onPressed: widget.onDropdownTap,
                    icon: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      size: w * 0.10,
                      color: AppColor.black0000000,
                    ),
                  )
                : (widget.sufixIcon != null
                    ? IconButton(
                        onPressed: widget.ontap,
                        icon: ImageIcon(
                          AssetImage(widget.sufixIcon!),
                          color: AppColor.green118844,
                        ),
                      )
                    : null),
            hintText: widget.hintText,
            hintStyle: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 19,
              color: AppColor.black0000000,
            ),
            contentPadding: widget.showDropdownIcon
                ? EdgeInsets.symmetric(
                    horizontal: w * 0.05, vertical: h * 0.015)
                : EdgeInsets.only(left: w * 0.05, bottom: h * 0.02 / 3),
          ),
        ),
      ),
    );
  }
}
