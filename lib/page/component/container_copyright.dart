import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container containerCopyright() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 40),
    width: 1000,
    child: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20, bottom: 50),
          width: double.infinity,
          height: 5,
          color: const Color.fromARGB(104, 158, 158, 158),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '@ 2023 BadrulFlut.',
              style: GoogleFonts.rubik(),
            ),
            const Spacer(),
            Text(
              'Build with Flutter.',
              style: GoogleFonts.rubik(),
            ),
          ],
        )
      ],
    ),
  );
}
