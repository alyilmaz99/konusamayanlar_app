import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:konusamayanlar_app/core/base/view/base_view.dart';
import 'package:konusamayanlar_app/core/constants/color_constant.dart';
import 'package:konusamayanlar_app/product/widget/board_widgets.dart';
import 'package:konusamayanlar_app/product/widget/auth/designedby_text_widget.dart';
import 'package:konusamayanlar_app/product/widget/login_button_widget.dart';
import 'package:konusamayanlar_app/view/auth/create/view/sign_up_view.dart';
import 'package:konusamayanlar_app/view/auth/login/view/sign_in_view.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({super.key});

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  @override
  Widget build(BuildContext context) {
    return BaseView(builder: ((context, width, height, appbar) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: height / 8.0),
            child: BoardView(height: height, width: width),
          ),
          SizedBox(
            height: height / 10,
          ),
          LoginButton(
            height: height,
            width: width,
            bgColor: ColorConst.buttonOrange,
            text: "loginButton".tr(),
            func: () {
              context.pushReplacement('/signIn');
            },
          ),
          const SizedBox(
            height: 15,
          ),
          LoginButton(
            height: height,
            width: width,
            bgColor: ColorConst.buttonGrey,
            text: "signUPButton".tr(),
            func: () {
              context.pushReplacement('/signUp');
            },
          ),
          SizedBox(
            height: height / 15,
          ),
          const DesignedByText(),
        ],
      );
    }));
  }
}
