import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konusamayanlar_app/core/base/view/base_view.dart';
import 'package:konusamayanlar_app/core/constants/color_constant.dart';
import 'package:konusamayanlar_app/product/widget/users_count_info.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return BaseView(builder: (context, width, height) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConst.appBgColor,
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(
              parent: NeverScrollableScrollPhysics()),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: width / 8, bottom: width / 40),
                      child: Container(
                        height: width / 5,
                        width: width / 1.5,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/header.png')),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: width / 10, bottom: width / 40, right: width / 20),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings_outlined,
                        size: 30,
                      ),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height / 1.4,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/fullBoard.png')),
                  ),
                  height: height / 1.9,
                  width: width / 1,
                  child: Column(
                    children: [
                      SizedBox(height: height / 10),
                      const Text(
                        'userName',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Biyografi',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: EdgeInsets.only(
                            right: width / 20, left: width / 20),
                        child: const UsersCountInfo(
                          textCount: 12,
                          superXCont: 5,
                          xCount: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
