import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/buttons/buttons.dart';
import 'package:portfolio/constants/color.dart';
import 'package:portfolio/constants/copyright.dart';
import 'package:portfolio/constants/responsiveText/Home/responsiveImage.dart';
import 'package:portfolio/views/pages/about.dart';
import 'package:portfolio/views/pages/contact.dart';
import 'package:portfolio/views/pages/projects.dart';

import '../Modular/IntroHomePage.dart';
import '../Modular/menu.dart';
import '../constants/scrollmanager.dart';

class Desktop extends StatefulWidget {
  const Desktop({Key, key}) : super(key: key);

  @override
  _DesktopState createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  final ScrollManager _scrollManager = ScrollManager();
  final GlobalKey _firstWidgetKey = GlobalKey();
  final GlobalKey _secondWidgetKey = GlobalKey();
  final GlobalKey _thirdWidgetKey = GlobalKey();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Menu(
        size: size,
        firstWidgetKey: _firstWidgetKey,
        scrollManager: ScrollManager(),
        secondWidgetKey: _secondWidgetKey,
        thirdWidgetKey: _thirdWidgetKey,
        scaffoldKey: _scaffoldKey,
      ),
      body: SingleChildScrollView(
        controller: _scrollManager.scrollController,
        child: Container(
          decoration: BoxDecoration(
           
          ),
          width: size.width,
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.1),
                    child: size.width > 1200
                        ? Text('Abdul',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 35,
                            ))
                        : IconButton(
                            icon: Padding(
                              padding: EdgeInsets.only(left: size.width * 0.1),
                              child: const Icon(
                                Icons.menu,
                                size: 40,
                              ),
                            ),
                            onPressed: () =>
                                _scaffoldKey.currentState!.openEndDrawer()),
                  ),
                  if (size.width > 1200)
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: size.width * 0.30),
                        child: size.width > 1200
                            ? Menu(
                                scaffoldKey: _scaffoldKey,
                                size: size,
                                firstWidgetKey: _firstWidgetKey,
                                scrollManager: _scrollManager,
                                secondWidgetKey: _secondWidgetKey,
                                thirdWidgetKey: _thirdWidgetKey,
                              )
                            : const SizedBox(),
                      ),
                    ),
                  SizedBox(
                    width: size.width * 0.1,
                  ),
                ],
              ),
              size.width > 1200
                  ? SizedBox(height: size.height * 0.25)
                  : SizedBox(height: size.height * 0.12),
              size.width > 1200
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: ImageResponsive.getStaticSize(context),
                          width: ImageResponsive.getStaticSize(context),
                          child: const CircleAvatar(
                              radius: 100,
                              backgroundImage: AssetImage('assets/Me2.jpg')),
                        ),
                        SizedBox(
                          width: size.width * 0.05,
                        ),
                        IntroHomePage(
                            size: size, thirdWidgetKey: _thirdWidgetKey),
                      ],
                    )
                  : Column(
                      children: [
                        SizedBox(
                          height: ImageResponsive.getStaticSize(context).toDouble(),
                          width: ImageResponsive.getStaticSize(context).toDouble(),
                          child: const CircleAvatar(
                              radius: 100,
                              backgroundImage: AssetImage('assets/Me2.jpg')),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        IntroHomePage(
                            size: size, thirdWidgetKey: _thirdWidgetKey)
                      ],
                    ),
              About(
                scrollToWidget: _scrollManager,
                NavKey: _firstWidgetKey,
                secondWidgetKey: _secondWidgetKey,
              ),
              Projects(
                scrollToWidget: _scrollManager,
                NavKey: _secondWidgetKey,
                secondKey: _thirdWidgetKey,
              ),
              Contact(
                NavKey: _thirdWidgetKey,
              ),
              size.width > 1200
                  ? Menu(
                      scaffoldKey: _scaffoldKey,
                      size: size,
                      firstWidgetKey: _firstWidgetKey,
                      scrollManager: ScrollManager(),
                      secondWidgetKey: _secondWidgetKey,
                      thirdWidgetKey: _thirdWidgetKey,
                      alignment: MainAxisAlignment.center,
                    )
                  : SizedBox(width: size.width * 0),
              SizedBox(
                height: size.height * 0.03,
              ),
              const Copyright(),
              SizedBox(
                height: size.height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
