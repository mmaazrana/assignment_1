import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextLayout extends StatelessWidget {
  const TextLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello, World!',
          style: GoogleFonts.merriweather(
              fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text(
          'Text can wrap without issue',
          style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mauris massa. Suspendisse potenti. Aenean aliquet eu nisi vitae tempus.',
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w300),
        ),
        const Divider(),
        Center(
          child: RichText(
            text: TextSpan(
              text: "Flutter text is ",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black),
              children: [
                TextSpan(
                  text: "really ",
                  style: GoogleFonts.poppins(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text: "powerful.",
                  style: GoogleFonts.merriweather(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.double),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
