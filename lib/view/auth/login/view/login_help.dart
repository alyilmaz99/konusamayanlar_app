import 'package:flutter/material.dart';
import 'package:konusamayanlar_app/core/base/view/base_view.dart';

class LoginHelpView extends StatefulWidget {
  const LoginHelpView({super.key});

  @override
  State<LoginHelpView> createState() => _LoginHelpViewState();
}

class _LoginHelpViewState extends State<LoginHelpView> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      builder: (context, width, height) {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'KONUŞAMAYANLAR',
                style: TextStyle(color: Colors.white),
              ),
              Container(
                height: height / 5,
                width: width / 2,
                color: Colors.amber,
              ),
            ]);
      },
    );
  }
}
