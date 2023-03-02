import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konusamayanlar_app/core/constants/color_constant.dart';
import 'package:konusamayanlar_app/product/widget/report_popup_widget.dart';

enum MenuValues {
  firtOption,
  secondOption,
  thirdOption,
}

class ThreeDotButton extends StatefulWidget {
  const ThreeDotButton({super.key});

  @override
  State<ThreeDotButton> createState() => _ThreeDotButtonState();
}

class _ThreeDotButtonState extends State<ThreeDotButton> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: ColorConst.appBarBg,
      icon: Image.asset(
        'assets/images/three_dot.png',
        height: 16,
      ),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: MenuValues.firtOption,
          child: Text(
            "first options",
            style: GoogleFonts.arimo(
              color: Colors.white,
              fontSize: 16,
            ),
          ).tr(),
        ),
        PopupMenuItem(
            value: MenuValues.secondOption,
            child: Text(
              "second options",
              style: GoogleFonts.arimo(
                color: Colors.white,
                fontSize: 16,
              ),
            ).tr()),
        PopupMenuItem(
          value: MenuValues.thirdOption,
          child: Text(
            "third option",
            style: GoogleFonts.arimo(
              color: Colors.white,
              fontSize: 16,
            ),
          ).tr(),
        )
      ],
      onSelected: (value) {
        switch (value) {
          case MenuValues.firtOption:
            showModalBottomSheet(
              backgroundColor: ColorConst.navBarBg,
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3,
                    child: const ReportPopup());
              },
            );
            break;
          case MenuValues.secondOption:
            break;
          case MenuValues.thirdOption:
            break;
          default:
        }
      },
    );
  }
}
