import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../view/splash_view.dart';

abstract class SplashScreenViewModel extends State<SplashScreen> {
  void initState() {
    Future.delayed(const Duration(seconds: 2), () async {
      context.pushReplacement('/login');
    });
  }
}
