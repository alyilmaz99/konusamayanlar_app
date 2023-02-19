import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesignedByText extends StatelessWidget {
  const DesignedByText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Designed By Vessac Software',
        style: GoogleFonts.arimo(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
