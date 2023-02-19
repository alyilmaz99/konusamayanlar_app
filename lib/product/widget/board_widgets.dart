import 'package:flutter/cupertino.dart';

class BoardView extends StatelessWidget {
  const BoardView({super.key, required this.height, required this.width});
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width / 1.17,
        height: height / 2.1,
        child: Image.asset('assets/images/splashScreen.png'),
      ),
    );
  }
}
