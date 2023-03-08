// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/color_constant.dart';

class TextBoxWidget extends StatefulWidget {
  const TextBoxWidget({super.key});

  @override
  State<TextBoxWidget> createState() => _TextBoxWidgetState();
}

class _TextBoxWidgetState extends State<TextBoxWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width / 1.4,
      height: width / 2.2,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(56, 56, 56, 1),
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: ColorConst.switchGray,
          width: 0.7,
        ),
      ),
      margin: EdgeInsets.only(left: width / 10, right: width / 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  radius: 23,
                  backgroundImage: NetworkImage(
                      'https://ca.slack-edge.com/T04PLHL1K2A-U04PVKME004-a416acec8ec0-512'),
                ),
                SizedBox(
                  width: 200,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet consectetur.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ali Yilmaz',
                  style: GoogleFonts.arimo(
                    color: const Color.fromRGBO(197, 197, 197, 1),
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '@alyilmaz',
                  style: GoogleFonts.arimo(
                    color: const Color.fromRGBO(197, 197, 197, 1),
                    fontSize: 12,
                  ),
                )
              ],
            ),
            const SizedBox(height: 7),
            Row(
              children: [
                SizedBox(
                  width: width / 1.5,
                  child: RichText(
                    text: TextSpan(
                      text:
                          'Lorem ipsum dolor sit amet consectetur. Pellentesque lacus netus lectus et a pellentesque.  integer odio scelerisque consectetur',
                      style: GoogleFonts.arimo(
                        color: ColorConst.buttonGrey,
                        fontSize: 11,
                      ),
                      children: [
                        TextSpan(
                          text: '  ... SEE MORE',
                          style: GoogleFonts.arimo(
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            color: ColorConst.textGreyMore,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 32,
                    width: 50,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/first_button.png'),
                    )),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 32,
                    width: 50,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/second_button.png'),
                    )),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 32,
                    width: 50,
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
      ),
    );
  }
}
