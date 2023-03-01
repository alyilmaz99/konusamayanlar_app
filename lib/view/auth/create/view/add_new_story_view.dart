import 'package:flutter/material.dart';
import 'package:konusamayanlar_app/core/base/view/base_view.dart';
import 'package:konusamayanlar_app/core/constants/color_constant.dart';

class AddNewStoryView extends StatefulWidget {
  const AddNewStoryView({super.key});

  @override
  State<AddNewStoryView> createState() => _AddNewStoryViewState();
}

class _AddNewStoryViewState extends State<AddNewStoryView> {
  @override
  Widget build(BuildContext context) {
    return BaseView(builder: (context, width, height, appbar) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConst.appBgColor,
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(
              parent: NeverScrollableScrollPhysics()),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/fullBoard.png')),
            ),
            margin: const EdgeInsets.all(12),
            height: height,
          ),
        ),
      );
    });
  }
}
