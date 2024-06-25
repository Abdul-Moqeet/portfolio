import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/responsiveText/About/R_Image.dart';
import 'package:portfolio/constants/responsiveText/detection/platformdetection.dart';


import '../../constants/responsiveText/About/ResponsiveAbout.dart';
import '../../constants/scrollmanager.dart';

class About extends StatelessWidget {
  final ScrollManager scrollToWidget;
  const About(
      {super.key,
      required this.NavKey,
      required this.scrollToWidget,
      required this.secondWidgetKey});

  final Key NavKey;
  final GlobalKey secondWidgetKey;

  @override
  Widget build(
    BuildContext context,
  ) {
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
          'Get To Know More',
          style: GoogleFonts.poppins(
              color: const Color.fromARGB(255, 90, 89, 89),
              fontSize: 15,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'About Me',
          style: GoogleFonts.poppins(
              color: Colors.black, fontSize: 45, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: size.height * 0.1,
        ),
       size.width > 1200 ? Row(
          children: [
            SizedBox(width: size.width * 0.1),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/About.png',
                fit: BoxFit.cover,
                height: size.height * 0.5,
                width: size.width * 0.3,
              ),
            ),
            SizedBox(
              width: size.width * 0.05,
            ),
            ResponsiveAbout(size: size),
          ],
        ) : Column(
          mainAxisSize: MainAxisSize.min,
          children: [Center(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/About.png',
                  fit: BoxFit.cover,
                  height: HeighAboutImageSize(context),
                  width: WidthAboutImageSize(context),
                ),
              ),
          ),
          const SizedBox(height: 50,),
          ResponsiveAbout(size: size)
          ],
        ),
        SizedBox(
          height: size.height * 0.1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
                onTap: () {
                  scrollToWidget.scrollToWidget(secondWidgetKey);
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

