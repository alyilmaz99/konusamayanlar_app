import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/constants/color_constant.dart';

class UsersCountInfo extends StatelessWidget {
  const UsersCountInfo(
      {super.key, this.textCount = 0, this.superXCont = 0, this.xCount = 0});
  final int textCount;
  final int superXCont;
  final int xCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(59, 59, 59, 1),
                shape: BoxShape.circle,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        textCount.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          color: ColorConst.buttonOrange,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text('textCount',
                  style: GoogleFonts.arimo(
                    color: const Color.fromRGBO(197, 197, 197, 1),
                    fontSize: 13,
                  )).tr(),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(59, 59, 59, 1),
                shape: BoxShape.circle,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        superXCont.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          color: ColorConst.buttonOrange,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text('superXcount',
                  style: GoogleFonts.arimo(
                    color: const Color.fromRGBO(197, 197, 197, 1),
                    fontSize: 13,
                  )).tr(),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(59, 59, 59, 1),
                shape: BoxShape.circle,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        xCount.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          color: ColorConst.buttonOrange,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text('xCount',
                  style: GoogleFonts.arimo(
                    color: const Color.fromRGBO(197, 197, 197, 1),
                    fontSize: 13,
                  )).tr(),
            ),
          ],
        ),
      ],
    );
  }
}
