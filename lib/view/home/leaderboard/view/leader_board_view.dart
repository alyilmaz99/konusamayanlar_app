import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:konusamayanlar_app/core/base/view/base_view.dart';
import 'package:konusamayanlar_app/core/constants/color_constant.dart';
import 'package:konusamayanlar_app/product/widget/leader_board/dropdown_widget.dart';
import 'package:konusamayanlar_app/view/home/leaderboard/viewmodel/leader_board_viewmodel.dart';

class LeaderBoardView extends StatefulWidget {
  const LeaderBoardView({super.key});

  @override
  State<LeaderBoardView> createState() => _LeaderBoardViewState();
}

class _LeaderBoardViewState extends LeaderBoardViewModel {
  String selectedValue = 'Haftalik';
  @override
  Widget build(BuildContext context) {
    return BaseView(
      builder: (context, width, height, appBar) {
        return Scaffold(
          backgroundColor: ColorConst.appBgColor,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: const RoundedRectangleBorder(),
                    backgroundColor: ColorConst.appBarBg,
                    fixedSize: const Size(180, 45),
                  ),
                  onPressed: () {},
                  child: Text(
                    'leaderBoard',
                    style: GoogleFonts.arimo(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ).tr(),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: height / 1.7,
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
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 40.0, top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 30,
                                width: 110,
                                decoration: const BoxDecoration(
                                  color: ColorConst.appBarBg,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Center(
                                  child: DropDownWidget(
                                    selectedValue: 'weekly'.tr(),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              const Text(
                                '22.12.23',
                                style: TextStyle(
                                    color: ColorConst.textGreyMore,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
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
      },
    );
  }
}
