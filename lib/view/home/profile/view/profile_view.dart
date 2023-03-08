// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konusamayanlar_app/core/base/view/base_view.dart';
import 'package:konusamayanlar_app/core/constants/color_constant.dart';
import 'package:konusamayanlar_app/product/widget/auth/text_box_widget.dart';
import 'package:konusamayanlar_app/product/widget/users_count_info.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return BaseView(builder: (context, width, height, appbar) {
      return Scaffold(
        backgroundColor: ColorConst.appBgColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 2,
            ),
            SizedBox(
              height: height / 1.31,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/fullBoard.png')),
                ),
                height: height / 1.9,
                width: width / 1,
                child: Column(
                  children: [
                    SizedBox(height: height / 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: width / 6,
                          ),
                          child: const CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                              'assets/images/profile.jpg',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              'Ali Yilmaz',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.arimo(
                                color: const Color.fromRGBO(
                                  197,
                                  197,
                                  197,
                                  1,
                                ),
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '@alyimaz',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.arimo(
                                color: ColorConst.buttonOrange,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: height / 40),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                      ),
                      child: UsersCountInfo(
                        textCount: 12,
                        superXCont: 5,
                        xCount: 13,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ToggleSwitch(
                      minWidth: 140.0,
                      cornerRadius: 25.0,
                      minHeight: 50,
                      activeBgColors: const [
                        [ColorConst.textGreyMore],
                        [ColorConst.textGreyMore],
                      ],
                      activeFgColor: Colors.white,
                      inactiveBgColor: ColorConst.appBarBg,
                      inactiveFgColor: Colors.white,
                      initialLabelIndex: 1,
                      totalSwitches: 2,
                      labels: const ['Share', 'Kaydedilenler'],
                      radiusStyle: true,
                      onToggle: (index) {
                        print('switched to: $index');
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 280,
                      child: SingleChildScrollView(
                        child: Column(
                          children: const [
                            TextBoxWidget(),
                            SizedBox(
                              height: 10,
                            ),
                            TextBoxWidget(),
                            SizedBox(
                              height: 10,
                            ),
                            TextBoxWidget(),
                            SizedBox(
                              height: 10,
                            ),
                            TextBoxWidget(),
                            SizedBox(
                              height: 10,
                            ),
                            TextBoxWidget(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
