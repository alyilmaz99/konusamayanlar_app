import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konusamayanlar_app/view/auth/splash/viewmodel/splash_viewmodel.dart';

import '../../../../core/base/view/base_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends SplashScreenViewModel {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      builder: (context, width, height) {
        return Scaffold(
          backgroundColor: const Color(0xFF121111),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: height / 4),
                child: Center(
                  child: SizedBox(
                    width: width / 1.17,
                    height: height / 2.1,
                    child: Image.asset('assets/images/splashScreen.png'),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: Center(
                  child: Text(
                    'Designed By Vessac Software',
                    style: GoogleFonts.arimo(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
