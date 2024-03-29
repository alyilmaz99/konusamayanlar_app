import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/color_constant.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.height,
    required this.width,
    required this.bgColor,
    required this.text,
    required this.func,
  });
  final double height;
  final double width;
  final Color bgColor;
  final String text;
  final VoidCallback func;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: const RoundedRectangleBorder(),
          backgroundColor: bgColor,
          fixedSize: Size(width / 1.1, height / 15)),
      child: Text(
        text,
        style: GoogleFonts.arimo(
          color: ColorConst.buttonText,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
