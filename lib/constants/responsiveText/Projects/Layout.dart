import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../Modular/cardDisplay.dart';

class ProjectLayout extends StatelessWidget {
  const ProjectLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (size.width > 1350) {
      return const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        cardDisplay(
          assetName: 'assets/project-1.png',
          TextCard: 'Project 1',
        ),
        cardDisplay(
          assetName: 'assets/project-2.png',
          TextCard: 'Project 2',
        ),
        cardDisplay(
          assetName: 'assets/project-3.png',
          TextCard: 'Project 3',
        )
      ]);
    } else if (size.width > 850 && size.width <= 1350) {
      return const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
           cardDisplay(
              assetName: 'assets/project-1.png',
              TextCard: 'Project 1',
            ),
            cardDisplay(
              assetName: 'assets/project-2.png',
              TextCard: 'Project 2',
            ),
          ]),
          SizedBox(height: 40,),
          Flexible(
            child: cardDisplay(
              customWidth: 700,
              customHeight: 650,
                    assetName: 'assets/project-3.png',
                    TextCard: 'Project 3',
                    customImageHeight: 500,
                  ),
          )
        ],
      );
    } else if (size.width > 750 && size.width <= 850){
      return const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
           cardDisplay(
              assetName: 'assets/project-1.png',
              TextCard: 'Project 1',
              customWidth: 325,
            ),
            cardDisplay(
              assetName: 'assets/project-2.png',
              TextCard: 'Project 2',

              customWidth: 325,
            ),
          ]),
          SizedBox(height: 40,),
          Flexible(
            child: cardDisplay(
              customWidth: 650,
              customHeight: 600,
                    assetName: 'assets/project-3.png',
                    TextCard: 'Project 3',
                    customImageHeight: 450,
                  ),
          )
        ],
      );
    }
    else if (size.width > 600 && size.width <= 750){
      return const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 40,),
          Flexible(
            child: cardDisplay(
              customWidth: 600,
              customHeight: 600,
                    assetName: 'assets/project-1.png',
                    TextCard: 'Project 3',
                    customImageHeight: 450,
                  ),
          ),SizedBox(height: 40,),
          Flexible(
            child: cardDisplay(
              customWidth: 600,
              customHeight: 600,
                    assetName: 'assets/project-2.png',
                    TextCard: 'Project 3',
                    customImageHeight: 450,
                  ),
          ),
          SizedBox(height: 40,),
          Flexible(
            child: cardDisplay(
              customWidth: 600,
              customHeight: 600,
                    assetName: 'assets/project-3.png',
                    TextCard: 'Project 3',
                    customImageHeight: 450,
                  ),
          )
        ],
      );}

      else if (size.width > 300 && size.width <= 600){
      return const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 40,),
          Flexible(
            child: cardDisplay(
              customWidth: 350,
              customHeight: 480,
                    assetName: 'assets/project-1.png',
                    TextCard: 'Project 3',
                    customImageHeight: 320,
                  ),
          ),SizedBox(height: 40,),
          Flexible(
            child: cardDisplay(
              customWidth: 350,
              customHeight: 480,
                    assetName: 'assets/project-2.png',
                    TextCard: 'Project 3',
                    customImageHeight: 320,
                  ),
          ),
          SizedBox(height: 40,),
          Flexible(
            child: cardDisplay(
              customWidth: 350,
              customHeight: 480,
                    assetName: 'assets/project-3.png',
                    TextCard: 'Project 3',
                    customImageHeight: 320,
                  ),
          )
        ],
      );}
    else {
      return const Column(children: [Row()]);
    }
  }
}
