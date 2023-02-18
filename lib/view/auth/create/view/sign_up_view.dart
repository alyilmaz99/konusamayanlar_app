import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:konusamayanlar_app/core/base/view/base_view.dart';
import 'package:konusamayanlar_app/core/constants/color_constant.dart';
import 'package:konusamayanlar_app/view/auth/create/viewmodel/sign_up_viewmodel.dart';

class SingUpView extends StatefulWidget {
  const SingUpView({super.key});

  @override
  State<SingUpView> createState() => _SingUpViewState();
}

class _SingUpViewState extends SignUpViewModel {
  @override
  Widget build(BuildContext context) {
    return BaseView(builder: (context, width, height) {
      return Scaffold(
        body: Column(
          children: [
            Image.asset('assets/images/board.png'),
          ],
        ),
      );
    });
  }
}
