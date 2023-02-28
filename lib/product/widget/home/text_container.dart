import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/color_constant.dart';
import '../report_popup_widget.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({
    super.key,
    required this.height,
    required this.width,
    required this.profileImage,
    required this.title,
    required this.userName,
    required this.userTicket,
    required this.time,
    required this.content,
  });
  final double height;
  final double width;
  final String profileImage;
  final String title;
  final String userName;
  final String userTicket;
  final String time;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConst.homeContainerBg,
      width: width,
      height: height / 3.6,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  minRadius: 30,
                  backgroundImage: AssetImage(profileImage),
                  backgroundColor: ColorConst.buttonGrey,
                ),
              ),
              SizedBox(
                width: 270,
                child: Text(
                  title,
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
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const ReportPopup();
                      },
                    );
                  },
                  icon: Image.asset(
                    'assets/images/three_dot.png',
                    height: 16,
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 13,
              ),
              Text(
                userName,
                textAlign: TextAlign.start,
                style: GoogleFonts.arimo(
                  color: ColorConst.textGrey,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                userTicket,
                textAlign: TextAlign.start,
                style: GoogleFonts.arimo(
                  color: ColorConst.textGrey,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                time,
                textAlign: TextAlign.start,
                style: GoogleFonts.arimo(
                  color: ColorConst.textGrey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: GestureDetector(
              onTap: () {
                //
              },
              child: RichText(
                text: TextSpan(
                  text: content,
                  style: GoogleFonts.arimo(
                    color: ColorConst.buttonGrey,
                    fontSize: 14,
                  ),
                  children: [
                    TextSpan(
                      text: '  ... SEE MORE',
                      style: GoogleFonts.arimo(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: ColorConst.textGreyMore,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: 80,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/first_button.png'),
                  )),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: 80,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/second_button.png'),
                  )),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: 80,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/third_button.png'),
                  )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
