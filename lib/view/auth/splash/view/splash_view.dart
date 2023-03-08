import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konusamayanlar_app/product/widget/board_widgets.dart';
import 'package:konusamayanlar_app/product/widget/auth/designedby_text_widget.dart';
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
      builder: (context, width, height, appbar) {
        return Scaffold(
          backgroundColor: const Color(0xFF121111),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: height / 4),
                child: BoardView(
                  height: height,
                  width: width,
                ),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(bottom: 25.0),
                child: DesignedByText(),
              ),
            ],
          ),
        );
      },
    );
  }
}
