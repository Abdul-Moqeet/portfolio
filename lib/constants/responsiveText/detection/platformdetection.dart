import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:portfolio/constants/buttons/R_Button.dart';
import 'package:portfolio/constants/responsiveText/About/R_Image.dart';
import 'package:portfolio/constants/responsiveText/Home/responsiveIcon.dart';

import '../About/R_Container.dart';
//for About me Text
double containerSize(BuildContext context) {
  if (kIsWeb) {
    // Handle web-specific behavior
    return ContainerResponsive.ContainerDescpGetStaticSize(context); 
  } else {
    // Handle behavior for other platforms
    return ContainerResponsive.ContainerDescpGetStaticSize(context).toDouble();
  }
}

//For
double HeightSize(BuildContext context) {
  if (kIsWeb) {
    // Handle web-specific behavior
    return ContainerResponsive.getStaticSize(context); 
  } else {
    // Handle behavior for other platforms
    return ContainerResponsive.getStaticSize(context).toDouble();
  }
}

double WidthSize(BuildContext context) {
  if (kIsWeb) {
    // Handle web-specific behavior
    return ContainerResponsive.WidthgetStaticSize(context); 
  } else {
    // Handle behavior for other platforms
    return ContainerResponsive.WidthgetStaticSize(context).toDouble();
  }


}
double WidthAboutImageSize(BuildContext context) {
  if (kIsWeb) {
    // Handle web-specific behavior
    return AboutImageResponsive.WidthgetStaticSize(context); 
  } else {
    // Handle behavior for other platforms
    return AboutImageResponsive.WidthgetStaticSize(context).toDouble();
  }
}

double HeighAboutImageSize(BuildContext context) {
  if (kIsWeb) {
    // Handle web-specific behavior
    return AboutImageResponsive.HeightgetStaticSize(context); 
  } else {
    // Handle behavior for other platforms
    return AboutImageResponsive.HeightgetStaticSize(context).toDouble();
  }
}

double HeightButtonResponsive(BuildContext context) {
  if (kIsWeb) {
    // Handle web-specific behavior
    return ButtonResponsive.HeightgetStaticSize(context); 
  } else {
    // Handle behavior for other platforms
    return ButtonResponsive.HeightgetStaticSize(context).toDouble();
  }
}
double WidthButtonResponsive(BuildContext context) {
  if (kIsWeb) {
    // Handle web-specific behavior
    return ButtonResponsive.WidthgetStaticSize(context); 
  } else {
    // Handle behavior for other platforms
    return ButtonResponsive.WidthgetStaticSize(context).toDouble();
  }
}
double ContainerDescpWidthResponsive(BuildContext context) {
  if (kIsWeb) {
    // Handle web-specific behavior
    return ContainerResponsive.WidthgetStaticSize(context); 
  } else {
    // Handle behavior for other platforms
    return ContainerResponsive.WidthgetStaticSize(context).toDouble();
  }
}
double ContainerDescpHeightResponsive(BuildContext context) {
  if (kIsWeb) {
    // Handle web-specific behavior
    return ContainerResponsive.getStaticSize(context); 
  } else {
    // Handle behavior for other platforms
    return ContainerResponsive.getStaticSize(context).toDouble();
  }
}
double IntroIconHeightResponsive(BuildContext context) {
  if (kIsWeb) {
    // Handle web-specific behavior
    return IconResponsive.getStaticSize(context); 
  } else {
    // Handle behavior for other platforms
    return IconResponsive.getStaticSize(context).toDouble();
  }
}


