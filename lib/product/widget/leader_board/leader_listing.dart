import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/color_constant.dart';

class ListingLeaderBoard extends StatelessWidget {
  const ListingLeaderBoard({
    super.key,
    required this.width,
    required this.userName,
    required this.sortingNumber,
    required this.userImage,
    required this.changedNumber,
  });
  final double width;
  final String userName;
  final String sortingNumber;
  final String userImage;
  final String changedNumber;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.only(left: width / 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(
                Icons.arrow_drop_up,
                color: ColorConst.buttonOrange,
                size: 30,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                sortingNumber,
                style: GoogleFonts.arimo(
                  color: ColorConst.buttonGrey,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: width / 1.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorConst.containerBgGrey),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(
                        userImage,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      userName,
                      style: GoogleFonts.arimo(
                        fontSize: 15,
                        color: ColorConst.textGrey,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      changedNumber,
                      style: GoogleFonts.arimo(
                        fontSize: 13,
                        color: ColorConst.buttonOrange,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
