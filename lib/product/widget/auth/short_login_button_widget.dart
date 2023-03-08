import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/color_constant.dart';

class ShorLoginButton extends StatelessWidget {
  const ShorLoginButton({
    super.key,
    required this.text,
    required this.func,
  });

  final String text;
  final VoidCallback func;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorConst.buttonOrange,
        shadowColor: ColorConst.textGrey,
        shape: const StadiumBorder(),
        minimumSize: const Size(140, 30),
      ),
      child: Text(
        text,
        style: GoogleFonts.arimo(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ).tr(),
    );
  }
}
