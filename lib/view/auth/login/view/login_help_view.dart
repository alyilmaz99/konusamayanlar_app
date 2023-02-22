import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:konusamayanlar_app/core/base/view/base_view.dart';
import 'package:konusamayanlar_app/core/constants/color_constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konusamayanlar_app/product/widget/designedby_text_widget.dart';
import 'package:konusamayanlar_app/product/widget/sent_email_popup.dart';
import 'package:konusamayanlar_app/view/auth/login/viewmodel/login_help_viewmodel.dart';
import '../../../../product/widget/textfield_widget.dart';

class LoginHelpView extends StatefulWidget {
  const LoginHelpView({super.key});

  @override
  State<LoginHelpView> createState() => _LoginHelpViewState();
}

class _LoginHelpViewState extends LoginHelpViewModel {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      builder: (context, width, height, appbar) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConst.appBgColor,
          body: SingleChildScrollView(
            physics: const ClampingScrollPhysics(
                parent: NeverScrollableScrollPhysics()),
            child: SizedBox(
              height: height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(flex: 2),
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/board.png')),
                    ),
                    height: height / 1.9,
                    width: width / 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: height / 25),
                        Text(
                          'loginHelp',
                          style: GoogleFonts.arimo(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ).tr(),
                        SizedBox(
                          height: height / 25,
                        ),
                        Text(
                          'findAccount',
                          style: GoogleFonts.arimo(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ).tr(),
                        SizedBox(
                          height: height / 35,
                        ),
                        Text(
                          'enterEmailInfo',
                          style: GoogleFonts.arimo(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: ColorConst.textGrey,
                          ),
                        ).tr(),
                        SizedBox(
                          height: height / 15,
                        ),
                        TextFieldWidget(
                          height: height,
                          width: width,
                          nameTextField: 'emailTextField',
                          svgRoot: 'assets/svg/mail.svg',
                          hiddenPass: 'assets/svg/hidden.svg',
                          showSuffix: false,
                        ),
                        SizedBox(
                          height: height / 25,
                        ),
                        TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return SentEmailPopup(
                                  myHeight: height / 3,
                                  myWidth: width,
                                );
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorConst.buttonOrange,
                            shadowColor: ColorConst.textGrey,
                            shape: const StadiumBorder(),
                            minimumSize: const Size(140, 30),
                          ),
                          child: Text(
                            'sendCode',
                            style: GoogleFonts.arimo(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ).tr(),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(flex: 2),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 40),
                    child: DesignedByText(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
