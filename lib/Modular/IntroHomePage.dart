import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio/constants/responsiveText/detection/platformdetection.dart';

import '../constants/buttons/buttons.dart';
import '../constants/scrollmanager.dart';

class IntroHomePage extends StatelessWidget {
  const IntroHomePage({
    super.key,
    required this.size,
    required GlobalKey<State<StatefulWidget>> thirdWidgetKey,
  }) : _thirdWidgetKey = thirdWidgetKey;

  final Size size;
  final GlobalKey<State<StatefulWidget>> _thirdWidgetKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        size.width > 1200 ? SizedBox(
          height: size.height * 0.07,
        ) : SizedBox(height: size.height * 0.02,),
        Text(
          "Hello, I'm",
          style: GoogleFonts.poppins(
              color: Colors.black54,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        Text(
          'Abdul Moqeet',
          style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        Text(
          'Frontend Developer',
          style: GoogleFonts.poppins(
              color: const Color.fromARGB(255, 90, 89, 89),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
         Row(
          mainAxisAlignment: size.width > 1200 ? MainAxisAlignment.center: MainAxisAlignment.center,
          children: [
            Button(
              onTap: (){},
              BoxColor: const Color.fromARGB(31, 0, 0, 0),
              boxText: 'Download CV',
              textColor: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            Button(
              boxText: 'Contact Info',
              onTap: () {
                ScrollManager().scrollToWidget(_thirdWidgetKey);
              },
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Row(
          mainAxisAlignment: size.width > 1200 ? MainAxisAlignment.center: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Github.png',
              height: IntroIconHeightResponsive(context),
              width: IntroIconHeightResponsive(context),
            ),
             size.width > 1200 ? SizedBox(width: 0,) : SizedBox(width: 20),
            Image.asset(
              'assets/linkedin.png',
              height: IntroIconHeightResponsive(context),
              width: IntroIconHeightResponsive(context),
            ),
          ],
        ),
      ],
    );
  }
}
