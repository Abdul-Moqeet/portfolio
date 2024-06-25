import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/scrollmanager.dart';

class Menu extends StatelessWidget {
  const Menu({
    super.key,
    required this.size,
    required this.firstWidgetKey,
    required this.scrollManager,
    required this.secondWidgetKey,
    required this.thirdWidgetKey,
    required this.scaffoldKey,
    this.alignment = MainAxisAlignment.end,
  });

  final Size size;
  final GlobalKey<State<StatefulWidget>> firstWidgetKey;
  final ScrollManager scrollManager;
  final GlobalKey<State<StatefulWidget>> secondWidgetKey;
  final GlobalKey<State<StatefulWidget>> thirdWidgetKey;
  final MainAxisAlignment alignment;
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return size.width > 1200
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: alignment,
            children: [
              GestureDetector(
                onTap: () => scrollManager.scrollToWidget(firstWidgetKey),
                child: Text('About',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text('Experience',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                    )),
              ),
              GestureDetector(
                onTap: () {
                  scrollManager.scrollToWidget(secondWidgetKey);
                },
                child: Text('Projects',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: GestureDetector(
                  onTap: () {
                    scrollManager.scrollToWidget(thirdWidgetKey);
                  },
                  child: Text('Contact',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ],
          )
        : MobileMenu(
          firstWidgetKey: firstWidgetKey,
          secondWidgetKey: secondWidgetKey,
          thirdWidgetKey: thirdWidgetKey,
            scaffoldKey: scaffoldKey,
          );
  }
}

class MobileMenu extends StatelessWidget {
  const MobileMenu({Key? key, required this.scaffoldKey, required this.firstWidgetKey, required this.secondWidgetKey, required this.thirdWidgetKey})
      : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey;

  final GlobalKey firstWidgetKey;
  final GlobalKey secondWidgetKey;
  final GlobalKey thirdWidgetKey;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Column(
         
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
           InkWell(
            onTap: () {
                  ScrollManager().scrollToWidget(firstWidgetKey);
                  Navigator.of(context).pop(); 
                  // Add your scroll manager logic here
                },
             child: Ink(
                child: Text('About', style: TextStyle(color: Colors.white, fontSize: 25),) ,
                
                
              ),
           ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 10.0),
               child: Ink(
                  child: Text('Expereince', style: TextStyle(color: Colors.white, fontSize: 25),) ,
                  
                  
                ),
             ),
             InkWell(
            onTap: () {
                  ScrollManager().scrollToWidget(secondWidgetKey);
                  Navigator.of(context).pop(); 
                  // Add your scroll manager logic here
                },
             child: Ink(
                child: Text('Projects', style: TextStyle(color: Colors.white, fontSize: 25),) ,
                
                
              ),
           ),
             Padding(
               padding: const EdgeInsets.only(top : 10.0),
               child: InkWell(
                         onTap: () {
                    ScrollManager().scrollToWidget(thirdWidgetKey);
                    Navigator.of(context).pop(); 
                    // Add your scroll manager logic here
                  },
               child: Ink(
                  child: Text('Contacts', style: TextStyle(color: Colors.white, fontSize: 25),) ,
                  
                  
                ),
                        ),
             ),
          ],
        ),
      ),
    );
  }
}

class MenuOption extends StatelessWidget {
  const MenuOption({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          title,
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
