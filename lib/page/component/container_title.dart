import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container containerTitle(String title, String description) {
  return Container(
    alignment: Alignment.topLeft,
    width: 1000,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.rubik(fontSize: 40),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          description,
          style: GoogleFonts.rubik(fontSize: 17),
        )
      ],
    ),
  );
}
