import 'package:flutter/material.dart';
import 'package:konusamayanlar_app/view/auth/login/view/login_help.dart';
import 'package:konusamayanlar_app/view/auth/login/view/login_page_view.dart';
import 'package:page_animation_transition/animations/fade_animation_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

import '../view/splash_view.dart';

abstract class SplashScreenViewModel extends State<SplashScreen> {
  void initState() {
    Future.delayed(const Duration(seconds: 2), () async {
      Navigator.of(context).pushReplacement(PageAnimationTransition(
          page: const LoginPageView(),
          pageAnimationType: FadeAnimationTransition()));
    });
  }
}
