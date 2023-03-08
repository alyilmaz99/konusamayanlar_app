import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/color_constant.dart';

class BestProfileWidget extends StatelessWidget {
  const BestProfileWidget({
    super.key,
    required this.height,
    required this.isFirst,
    required this.text,
  });
  final double height;
  final bool isFirst;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height / 4.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: GoogleFonts.arimo(
              color: ColorConst.buttonGrey,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          isFirst == true
              ? const Icon(
                  Icons.star,
                  color: ColorConst.buttonOrange,
                  size: 17,
                )
              : const SizedBox(),
          CircleAvatar(
            radius: isFirst == true ? 40 : 32,
            backgroundImage: const AssetImage(
              'assets/images/profile.jpg',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '@alyilmaz',
            style: GoogleFonts.arimo(
              fontSize: isFirst == true ? 15 : 13,
              color: ColorConst.textGrey,
            ),
          ),
          Row(
            children: [
              Text(
                "3455",
                style: GoogleFonts.arimo(
                  fontSize: isFirst == true ? 15 : 13,
                  color: ColorConst.buttonOrange,
                ),
              ),
              isFirst == true
                  ? Icon(
                      Icons.arrow_drop_up,
                      color: ColorConst.buttonOrange,
                      size: 30,
                    )
                  : Icon(
                      Icons.arrow_drop_down,
                      color: ColorConst.textGreyMore,
                      size: 20,
                    )
            ],
          ),
        ],
      ),
    );
  }
}
