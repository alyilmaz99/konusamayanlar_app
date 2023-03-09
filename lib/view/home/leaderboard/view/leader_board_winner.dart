import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konusamayanlar_app/core/base/view/base_view.dart';
import 'package:konusamayanlar_app/core/constants/color_constant.dart';
import 'package:konusamayanlar_app/product/widget/leader_board/winner_widget.dart';

class LeaderBoardWinner extends StatefulWidget {
  const LeaderBoardWinner({super.key});

  @override
  State<LeaderBoardWinner> createState() => _LeaderBoardWinnerState();
}

class _LeaderBoardWinnerState extends State<LeaderBoardWinner> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      builder: (context, width, height, appBar) {
        return Scaffold(
          backgroundColor: ColorConst.appBgColor,
          appBar: appBar,
          body: Center(
            child: SizedBox(
              height: height / 1.5,
              width: width / 1.1,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/fullBoard.png',
                      ),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    WinnerWidget(
                      width: width,
                      image: 'assets/images/profile.jpg',
                      nickName: '@alyilmaz',
                      number: '1',
                      sortingNumber: '1234',
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    WinnerWidget(
                      width: width,
                      image: 'assets/images/profile.jpg',
                      nickName: '@stjousama',
                      number: '2',
                      sortingNumber: '4555',
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    WinnerWidget(
                      width: width,
                      image: 'assets/images/profile.jpg',
                      nickName: '@okethis',
                      number: '3',
                      sortingNumber: '23',
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
