import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konusamayanlar_app/core/constants/color_constant.dart';
import '../view/login_help_view.dart';

abstract class LoginHelpViewModel extends State<LoginHelpView> {
  void showPopup({
    required double myHeight,
    required double myWidth,
  }) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: const Color.fromRGBO(50, 49, 49, 1),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
            content: SizedBox(
              height: myHeight,
              width: myWidth,
              child: Column(
                children: [
                  Image.asset('assets/images/sendcode.png'),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    'loginCodeSent',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.arimo(
                      color: ColorConst.buttonOrange,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ).tr(),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    'sentCodeSubtext',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.arimo(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ).tr(),
                  const Spacer(
                    flex: 1,
                  ),
                  TextButton(
                    onPressed: (() {
                      Navigator.pop(context);
                    }),
                    child: Text(
                      'okButton',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.arimo(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ).tr(),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
