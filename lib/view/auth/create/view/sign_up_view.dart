import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konusamayanlar_app/core/base/view/base_view.dart';
import 'package:konusamayanlar_app/product/widget/short_login_button_widget.dart';
import 'package:konusamayanlar_app/product/widget/switch_row_widget.dart';
import 'package:konusamayanlar_app/view/auth/create/viewmodel/sign_up_viewmodel.dart';
import 'package:konusamayanlar_app/view/auth/login/view/login_page_view.dart';

import '../../../../core/constants/color_constant.dart';
import '../../../../product/widget/auth_board.dart';
import '../../../../product/widget/designedby_text_widget.dart';
import '../../../../product/widget/login_button_widget.dart';
import '../../../../product/widget/textfield_widget.dart';
import '../../login/view/login_help_view.dart';

class SingUpView extends StatefulWidget {
  const SingUpView({super.key});

  @override
  State<SingUpView> createState() => _SingUpViewState();
}

class _SingUpViewState extends SignUpViewModel {
  bool valueS = true;
  bool valueSS = false;
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
                  AuthBoard(
                    height: height,
                    width: width,
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height / 25,
                        ),
                        Text(
                          'signUPButton',
                          style: GoogleFonts.arimo(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ).tr(),
                        SizedBox(
                          height: height / 40,
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
                          nameTextField: 'mailTextField',
                          svgRoot: 'assets/svg/@.svg',
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
                        TextFieldWidget(
                          height: height,
                          width: width,
                          nameTextField: 'passwordTextField',
                          svgRoot: 'assets/svg/lock.svg',
                          hiddenPass: 'assets/svg/hidden.svg',
                          showSuffix: true,
                        ),
                        SwitchRowWidget(
                          valueS: valueS,
                          func: (value) => setState(
                            () {
                              valueS = value;
                            },
                          ),
                          text: 'KVKK',
                        ),
                        SwitchRowWidget(
                          valueS: valueSS,
                          func: (value) => setState(
                            () {
                              valueSS = value;
                            },
                          ),
                          text: 'KVKK',
                        ),
                        ShorLoginButton(
                          text: 'signUPButton',
                          func: () {},
                        )
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
                    text: 'loginButton'.tr(),
                    func: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPageView()));
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
