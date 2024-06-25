import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/responsiveText/Projects/Layout.dart';
import 'package:portfolio/constants/scrollmanager.dart';

class Projects extends StatelessWidget {
  const Projects(
      {super.key,
      required this.NavKey,
      required this.scrollToWidget,
      required this.secondKey});

  final Key NavKey;
  final ScrollManager scrollToWidget;
  final GlobalKey secondKey;
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
          'Browse My Projects',
          style: GoogleFonts.poppins(
              color: const Color.fromARGB(255, 90, 89, 89),
              fontSize: 15,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'Projects',
          style: GoogleFonts.poppins(
              color: Colors.black, fontSize: 45, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: size.height * 0.1,
        ),
        const ProjectLayout(),
        SizedBox(
          height: size.height * 0.08,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
                onTap: () {
                  scrollToWidget.scrollToWidget(secondKey);
                },
                child: const Icon(
                  Icons.arrow_downward,
                  size: 50,
                )),
            SizedBox(
              width: size.width * 0.02,
            ),
          ],
        )
      ],
    );
  }
}
