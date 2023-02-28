import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konusamayanlar_app/core/base/view/base_view.dart';
import 'package:konusamayanlar_app/core/constants/color_constant.dart';
import 'package:konusamayanlar_app/product/widget/home/text_container.dart';
import 'package:konusamayanlar_app/product/widget/report_popup_widget.dart';
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
        return Scaffold(
          backgroundColor: ColorConst.appBgColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 4,
                ),
                TextContainer(
                  height: height,
                  width: width,
                  profileImage: 'assets/images/profile.jpg',
                  title:
                      'Sicis hikayem herkesi cok  cokcok cok cok sasirtacakkkkkkkkkkkk',
                  userName: 'Ali Yilmaz',
                  userTicket: '@alyimaz',
                  time: '15h',
                  content:
                      'Lorem ipsum dolor sit amet consectetur. Pellentesque lacus netus lectus et a pellentesque. Penatibus magnis at  odio scelerisque nunc pellentesque integer odio scelerisque consectetur',
                ),
                const SizedBox(
                  height: 4,
                ),
                TextContainer(
                  height: height,
                  width: width,
                  profileImage: 'assets/images/profile.jpg',
                  title:
                      'Sicis hikayem herkesi cok  cokcok cok cok sasirtacakkkkkkkkkkkk',
                  userName: 'Ali Yilmaz',
                  userTicket: '@alyimaz',
                  time: '15h',
                  content:
                      'Lorem ipsum dolor sit amet consectetur. Pellentesque lacus netus lectus et a pellentesque. Penatibus magnis at  odio scelerisque nunc pellentesque integer odio scelerisque consectetur',
                ),
                const SizedBox(
                  height: 4,
                ),
                TextContainer(
                  height: height,
                  width: width,
                  profileImage: 'assets/images/profile.jpg',
                  title:
                      'Sicis hikayem herkesi cok  cokcok cok cok sasirtacakkkkkkkkkkkk',
                  userName: 'Ali Yilmaz',
                  userTicket: '@alyimaz',
                  time: '15h',
                  content:
                      'Lorem ipsum dolor sit amet consectetur. Pellentesque lacus netus lectus et a pellentesque. Penatibus magnis at  odio scelerisque nunc pellentesque integer odio scelerisque consectetur',
                ),
                const SizedBox(
                  height: 4,
                ),
                TextContainer(
                  height: height,
                  width: width,
                  profileImage: 'assets/images/profile.jpg',
                  title:
                      'Sicis hikayem herkesi cok  cokcok cok cok sasirtacakkkkkkkkkkkk',
                  userName: 'Ali Yilmaz',
                  userTicket: '@alyimaz',
                  time: '15h',
                  content:
                      'Lorem ipsum dolor sit amet consectetur. Pellentesque lacus netus lectus et a pellentesque. Penatibus magnis at  odio scelerisque nunc pellentesque integer odio scelerisque consectetur',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
