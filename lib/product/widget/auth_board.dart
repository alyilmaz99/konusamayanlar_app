import 'package:flutter/material.dart';

class AuthBoard extends StatelessWidget {
  const AuthBoard({
    super.key,
    required this.height,
    required this.width,
    required this.widget,
  });

  final double height;
  final double width;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/board.png')),
      ),
      height: height / 1.9,
      width: width / 1,
      child: widget,
    );
  }
}
