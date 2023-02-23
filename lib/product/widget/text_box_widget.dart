import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      decoration: BoxDecoration(
        color: const Color.fromRGBO(56, 56, 56, 1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.only(left: width / 10, right: width / 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: height / 30,
                      backgroundImage: const NetworkImage(
                          'https://ca.slack-edge.com/T04PLHL1K2A-U04PVKME004-a416acec8ec0-512'),
                    ),
                    SizedBox(
                      height: width / 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ali Yilmaz',
                            style: GoogleFonts.arimo(
                              color: const Color.fromRGBO(197, 197, 197, 1),
                              fontSize: 12,
                            )),
                        Text('@alyilmaz',
                            style: GoogleFonts.arimo(
                              color: const Color.fromRGBO(197, 197, 197, 1),
                              fontSize: 12,
                            ))
                      ],
                    ),
                  ],
                ),
                SizedBox(width: width / 20),
                SizedBox(
                  width: width / 1.8,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet consectetur.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: width / 40),
            Row(
              children: [
                SizedBox(
                  width: width / 1.5,
                  child: const Text(
                    'Lorem ipsum dolor sit amet consectetur. Pellentesque lacus netus lectus et a pellentesque. Penatibus magnis at elementum facilisis nunc pellentesque integer odio scelerisque',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: width / 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: width / 8,
                    width: width / 5,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/first_button.png'),
                    )),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: width / 8,
                    width: width / 5,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/second_button.png'),
                    )),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: width / 8,
                    width: width / 5,
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
