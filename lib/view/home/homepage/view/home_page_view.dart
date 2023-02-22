import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konusamayanlar_app/core/base/view/base_view.dart';
import 'package:konusamayanlar_app/core/constants/color_constant.dart';
import 'package:konusamayanlar_app/view/home/homepage/viewmodel/home_page_viewmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends HomePageViewModel {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      builder: (context, width, height, appBar) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: ColorConst.homeContainerBg,
              width: width,
              height: height / 3.6,
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
              color: ColorConst.homeContainerBg,
              width: width,
              height: height / 3.6,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          minRadius: 35,
                          backgroundImage:
                              AssetImage('assets/images/profile.jpg'),
                          backgroundColor: ColorConst.buttonGrey,
                        ),
                      ),
                      SizedBox(
                        width: 270,
                        child: Text(
                          'Sicis hikayem herkesi cok  cokcok cok cok sasirtacakkkkkkkkkkkk',
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 20,
                        child: IconButton(
                          iconSize: 16,
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/three_dot.png',
                            height: 16,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
              color: ColorConst.homeContainerBg,
              width: width,
              height: height / 5,
            ),
          ],
        );
      },
    );
  }
}
