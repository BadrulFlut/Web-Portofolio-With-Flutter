import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container containerProfile(String nama, String description, String skill1,
    String skill2, String skill3, VoidCallback button) {
  final _onHover = ValueNotifier(false);
  return Container(
    width: 1250,
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: _onHover.value ? 700 : 630,
              height: _onHover.value ? 840 : 800,
              decoration: const BoxDecoration(color: Colors.white,
                  // image: DecorationImage(
                  //   image: NetworkImage(''),
                  //   fit: BoxFit.cover
                  // )
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(71, 158, 158, 158),
                        spreadRadius: 7,
                        blurRadius: 20)
                  ]),
              child: ValueListenableBuilder(
                valueListenable: _onHover,
                builder: (context, value, child) {
                  return InkWell(
                    onHover: (hover) {
                      _onHover.value = hover;
                    },
                    child: Center(
                      child: Text('Upload Guys....',
                          style: GoogleFonts.rubik(fontSize: 20)),
                    ),
                  );
                },
              )),
          const SizedBox(
            width: 60,
          ),
          SizedBox(
            width: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(nama,
                    style: GoogleFonts.rubik(
                      fontSize: 32,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  description,
                  style: GoogleFonts.rubik(fontSize: 19, height: 1.9),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(skill1,
                        style: GoogleFonts.rubik(color: Colors.grey[400])),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(skill2,
                        style: GoogleFonts.rubik(color: Colors.grey[400])),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(skill3,
                        style: GoogleFonts.rubik(color: Colors.grey[400])),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    minimumSize: const Size(60, 45),
                    shape: const StadiumBorder(),
                  ),
                  onPressed: button,
                  child: const Text("View Details"),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
