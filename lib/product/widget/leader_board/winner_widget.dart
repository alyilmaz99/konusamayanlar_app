import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/color_constant.dart';

class WinnerWidget extends StatelessWidget {
  const WinnerWidget({
    super.key,
    required this.width,
    required this.number,
    required this.image,
    required this.nickName,
    required this.sortingNumber,
  });
  final double width;
  final String number;
  final String image;
  final String nickName;
  final String sortingNumber;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width / 1.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            number,
            style: GoogleFonts.arimo(
              color: ColorConst.buttonGrey,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          Column(
            children: [
              const Icon(
                Icons.star,
                color: ColorConst.buttonOrange,
                size: 15,
              ),
              const SizedBox(
                height: 5,
              ),
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                  image,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                nickName,
                style: GoogleFonts.arimo(
                  fontSize: 15,
                  color: ColorConst.textGrey,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                sortingNumber,
                style: GoogleFonts.arimo(
                  fontSize: 14,
                  color: ColorConst.buttonOrange,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: const RoundedRectangleBorder(),
                  backgroundColor: ColorConst.appBarBg,
                  fixedSize: const Size(120, 35),
                ),
                onPressed: () {
                  //
                },
                child: Text(
                  'leaderBoard',
                  style: GoogleFonts.arimo(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ).tr(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
