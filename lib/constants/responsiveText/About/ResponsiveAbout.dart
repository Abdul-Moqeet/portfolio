import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio/constants/responsiveText/detection/platformdetection.dart';

import '../../Strings.dart';

class ResponsiveAbout extends StatelessWidget {
  const ResponsiveAbout({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
             width: ContainerDescpWidthResponsive(context),
              height: ContainerDescpHeightResponsive(context),
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black87),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: Text(
                        'Experience',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      '2+ years',
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        'Frontend Development',
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: size.width * 0.04,
            ),
            Container(
              width: ContainerDescpWidthResponsive(context),
              height: ContainerDescpHeightResponsive(context),
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black87),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        textAlign: TextAlign.center,
                        'Education',
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      textAlign: TextAlign.center,
                      'B.Sc. Bachelors Degree',
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.045),
        Flexible(
          fit: FlexFit.loose,
          child: Container(
            width: containerSize(context),
            child: Text(
              Ostrings().dummyText,
              textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
    );
  }
}
