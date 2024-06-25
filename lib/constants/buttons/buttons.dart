import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    this.Owidth,
    this.Oheight,
    this.BoxColor = Colors.black,
    this.textColor = Colors.white,
    required this.boxText,
    required this.onTap,
  }) : super(key: key);
  
  final double? Owidth;
  final double? Oheight;
  final Color BoxColor;
  final String boxText;
  final Color textColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
double buttonWidth = Owidth ?? (size.width > 1200 ? 150 : 150);
    double buttonHeight = Oheight ?? (size.height > 1200 ? 80 : 50);

    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onTap, // Call onTap as a function
      child: Ink(
        width: buttonWidth,
        height: buttonHeight,
        decoration: BoxDecoration(
          color: BoxColor,
          border: Border.all(width: 2, color: Colors.black87),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            boxText,
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
