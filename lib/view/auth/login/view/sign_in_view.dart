import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konusamayanlar_app/core/base/view/base_view.dart';
import 'package:konusamayanlar_app/core/constants/color_constant.dart';
import 'package:konusamayanlar_app/product/widget/designedby_text_widget.dart';
import 'package:konusamayanlar_app/product/widget/login_button_widget.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      builder: (context, width, height) {
        return Scaffold(
          backgroundColor: ColorConst.appBgColor,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              Stack(
                children: [
                  SizedBox(
                    height: height / 1.9,
                    width: width / 1,
                    child: Image.asset('assets/images/board.png'),
                  ),
                ],
              ),
              const Spacer(flex: 1),
              Text(
                'If you dont have an account',
                style: GoogleFonts.arimo(
                  color: ColorConst.textGrey,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              LoginButton(
                height: height,
                width: width,
                bgColor: ColorConst.buttonGrey,
                text: 'signUpButton'.tr(),
                func: () {},
              ),
              const Spacer(flex: 1),
              const Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: DesignedByText(),
              ),
            ],
          ),
        );
      },
    );
  }
}
