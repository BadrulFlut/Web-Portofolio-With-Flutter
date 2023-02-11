import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

InkWell textButton(
  String nama,
  VoidCallback button,
  /*Function? hover*/
) {
  return InkWell(
    onHover: (value) {},
    onTap: button,
    child: Text(
      nama,
      style: GoogleFonts.rubik(fontSize: 18, fontWeight: FontWeight.w600),
    ),
  );
}
