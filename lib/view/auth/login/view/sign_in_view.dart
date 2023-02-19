import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konusamayanlar_app/core/base/view/base_view.dart';
import 'package:konusamayanlar_app/core/constants/color_constant.dart';
import 'package:konusamayanlar_app/product/widget/designedby_text_widget.dart';
import 'package:konusamayanlar_app/product/widget/login_button_widget.dart';
import 'package:konusamayanlar_app/product/widget/textfield_widget.dart';
import 'package:konusamayanlar_app/view/auth/create/view/sign_up_view.dart';
import 'package:konusamayanlar_app/view/auth/login/view/login_help.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  bool valueS = true;
  @override
  Widget build(BuildContext context) {
    return BaseView(
      builder: (context, width, height) {
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
                        SizedBox(
                          height: height / 15,
                        ),
                        Text(
                          'loginButton',
                          style: GoogleFonts.arimo(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ).tr(),
                        SizedBox(
                          height: height / 15,
                        ),
                        TextFieldWidget(
                          height: height,
                          width: width,
                          nameTextField: 'nameTextField',
                          svgRoot: 'assets/svg/profile.svg',
                          hiddenPass: 'assets/svg/hidden.svg',
                          showSuffix: false,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFieldWidget(
                          height: height,
                          width: width,
                          nameTextField: 'passwordTextField',
                          svgRoot: 'assets/svg/lock.svg',
                          hiddenPass: 'assets/svg/hidden.svg',
                          showSuffix: true,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'rememberMe',
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
                              activeTrackColor: Colors.white38,
                              inactiveTrackColor: Colors.white38,
                              value: valueS,
                              onChanged: (value) => setState(
                                () {
                                  valueS = value;
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const LoginHelpView()));
                          },
                          child: Text(
                            'forgotPass',
                            style: GoogleFonts.arimo(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey.shade600),
                          ).tr(),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorConst.buttonOrange,
                            shadowColor: ColorConst.textGrey,
                            shape: const StadiumBorder(),
                            minimumSize: const Size(140, 30),
                          ),
                          child: Text(
                            'loginButton',
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
                  const Spacer(flex: 1),
                  Text(
                    'noAccount',
                    style: GoogleFonts.arimo(
                      color: ColorConst.textGrey,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ).tr(),
                  const SizedBox(
                    height: 10,
                  ),
                  LoginButton(
                    height: height,
                    width: width,
                    bgColor: ColorConst.buttonGrey,
                    text: 'signUPButton'.tr(),
                    func: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SingUpView()));
                    },
                  ),
                  const Spacer(flex: 1),
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
