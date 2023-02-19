import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/color_constant.dart';

class SwitchRowWidget extends StatelessWidget {
  const SwitchRowWidget({
    super.key,
    required this.valueS,
    required this.func,
    required this.text,
  });

  final bool valueS;
  final Function(bool) func;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: GoogleFonts.arimo(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: ColorConst.textGrey,
            ),
          ).tr(),
          const SizedBox(
            width: 20,
          ),
          Switch(
            activeColor: Colors.white,
            activeTrackColor: ColorConst.switchGreen,
            inactiveTrackColor: ColorConst.switchGray,
            value: valueS,
            onChanged: func,
          ),
        ],
      ),
    );
  }
}
