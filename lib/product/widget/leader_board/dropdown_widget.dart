import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/color_constant.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key, required this.selectedValue});
  final String selectedValue;
  @override
  State<DropDownWidget> createState() => _DropDownWidgetState(selectedValue);
}

class _DropDownWidgetState extends State<DropDownWidget> {
  _DropDownWidgetState(this.selectedValue);
  String selectedValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      alignment: Alignment.center,
      underline: Container(
        height: 0,
      ),
      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue.toString();
        });
      },
      value: selectedValue,
      dropdownColor: ColorConst.appBarBg,
      items: [
        DropdownMenuItem(
          value: 'daily'.tr(),
          child: Text(
            'daily'.tr(),
            style: GoogleFonts.arimo(
              color: ColorConst.buttonGrey,
            ),
          ),
        ),
        DropdownMenuItem(
          value: 'weekly'.tr(),
          child: Text(
            'weekly',
            style: GoogleFonts.arimo(
              color: ColorConst.buttonGrey,
            ),
          ).tr(),
        ),
        DropdownMenuItem(
          value: 'monthly'.tr(),
          child: Text(
            'monthly'.tr(),
            style: GoogleFonts.arimo(
              color: ColorConst.buttonGrey,
            ),
          ),
        ),
        DropdownMenuItem(
          value: 'yearly'.tr(),
          child: Text(
            'yearly'.tr(),
            style: GoogleFonts.arimo(
              color: ColorConst.buttonGrey,
            ),
          ),
        ),
      ],
    );
  }
}
