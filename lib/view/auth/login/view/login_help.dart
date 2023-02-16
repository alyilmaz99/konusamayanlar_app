import 'package:flutter/material.dart';
import 'package:konusamayanlar_app/core/base/model/size_config.dart';

class LoginHelpView extends StatefulWidget {
  const LoginHelpView({super.key});

  @override
  State<LoginHelpView> createState() => _LoginHelpViewState();
}

class _LoginHelpViewState extends State<LoginHelpView> {
  @override
  void initState() {
    super.initState();
    SizeConfig.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight,
    );
  }
}
