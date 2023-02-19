import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/color_constant.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.height,
    required this.width,
    required this.nameTextField,
    required this.svgRoot,
    required this.hiddenPass,
    required this.showSuffix,
  });
  final double height;
  final double width;
  final String nameTextField;
  final String svgRoot;
  final String hiddenPass;
  final bool showSuffix;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height / 20,
      width: width / 1.8,
      child: TextField(
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        style: GoogleFonts.arimo(
          fontSize: 17,
          color: ColorConst.textGrey,
          fontWeight: FontWeight.w400,
        ),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          isDense: true,
          alignLabelWithHint: true,
          hintStyle: GoogleFonts.arimo(
            fontSize: 15,
            color: ColorConst.textGrey,
            fontWeight: FontWeight.w400,
          ),
          hintText: nameTextField.tr(),
          prefixIconConstraints: const BoxConstraints(
            maxHeight: 40,
            minHeight: 20,
            minWidth: 20,
            maxWidth: 40,
          ),
          prefixIcon: Container(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 2,
              right: 10,
            ),
            child: SvgPicture.asset(
              svgRoot,
            ),
          ),
          suffixIcon: showSuffix == true
              ? Container(
                  padding: const EdgeInsets.only(
                    left: 30.0,
                    top: 1,
                    right: 15,
                  ),
                  child: SvgPicture.asset(
                    hiddenPass,
                  ),
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.amber,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
