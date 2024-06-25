import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/responsiveText/Home/responsiveIcon.dart';
import 'package:portfolio/constants/responsiveText/responsiveText.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key, required this.NavKey}) : super(key: key);

  final Key NavKey;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: size.height * 0.14, // Removed fixed height
        ),
        SizedBox(
          key: NavKey,
          height: size.height * 0.08, // Removed fixed height
        ),
        Text(
          'Get In Touch',
          style: GoogleFonts.poppins(
              color: const Color.fromARGB(255, 90, 89, 89),
              fontSize: 15,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'Contact Me',
          style: GoogleFonts.poppins(
              color: Colors.black, fontSize: 45, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        Container(
          width: size.width > 600 ? 500 : 400,
          height: size.width > 600 ? 100 : 80,
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.black87),
              borderRadius: BorderRadius.circular(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.mail,
                size: IconResponsive.getStaticSize(context).toDouble(),
              ),
              Text(
                'contact@gmail.com',
                style: ResponsiveText.getTextStyle(context)
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.02, right: size.width * 0.005),
                child: Icon(
                  Icons.facebook,
                  size: IconResponsive.getStaticSize(context).toDouble(),
                ),
              ),
              Text(
                'Facebook',
                style: ResponsiveText.getTextStyle(context), // Use the static method to get the text style
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.15,
        ),
      ],
    );
  }
}
