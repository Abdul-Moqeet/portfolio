import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio/constants/buttons/buttons.dart';
import 'package:portfolio/constants/responsiveText/detection/platformdetection.dart';

class cardDisplay extends StatelessWidget {
  const cardDisplay({super.key, required this.assetName, required this.TextCard,
  this.customHeight = 400, this.customWidth = 350, this.customImageHeight = 250});

  final String assetName;
  final String TextCard;
  final double customHeight;
  final double customWidth;
   final double customImageHeight;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
        child: Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(30),
          child: Container(
            
            height: customHeight,
            width: customWidth,
            decoration: BoxDecoration(
              
              border: Border.all(width: 2, color: Colors.black26),
              borderRadius: BorderRadius.circular(30),
              color: Color.fromARGB(93, 235, 235, 235)
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 25, left: 25, right: 25, bottom: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      assetName,
                      fit: BoxFit.fill,
                      height: customImageHeight,
                      width: double.infinity,
                    ),
                  ),
                ),
                Text(
                  TextCard,
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Button(
                        onTap: () {
                          
                        },
                        Oheight: HeightButtonResponsive(context),
                        Owidth: WidthButtonResponsive(context),
                        boxText: 'Github',
                        BoxColor: Colors.transparent,
                        textColor: Colors.black,
                        // Oheight: size.height * 0.05,
                        // Owidth: size.width * 0.08,
                      ),
                
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Button(
                          Oheight: HeightButtonResponsive(context),
                        Owidth: WidthButtonResponsive(context),
                          onTap: (){},
                          boxText: 'Live demo',
                          BoxColor: Colors.transparent,
                          textColor: Colors.black,
                        //   Oheight: size.height * 0.05,
                        // Owidth: size.width * 0.08,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
