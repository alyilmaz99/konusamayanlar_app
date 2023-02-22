import 'package:flutter/material.dart';
import 'package:konusamayanlar_app/core/base/view/base_view.dart';
import 'package:konusamayanlar_app/view/home/mainpage/viewmodel/main_page_viewmodel.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends MainPageViewModel {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      builder: (context, width, height, appbar) {
        return Scaffold(
          appBar: appbar,
          body: Container(),
        );
      },
    );
  }
}
