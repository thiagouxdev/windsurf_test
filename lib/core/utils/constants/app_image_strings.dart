import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppImages {
  // PNG / JPG
  static const String googleLogo = "assets/logos/google-icon.png";

  // GIF
  static const String verifyIllustration =
      "assets/images/animations/sammy-line-travel-backpack-with-passport-and-air-ticket.gif";

  // SVG
  static const String appLogoDark = "assets/images/logos/app/Logo-dark.svg";
  static const String appLogoLight = "assets/images/logos/app/Logo-light.svg";

  static Widget load(String assetPath,
      {double? width, double? height, BoxFit fit = BoxFit.contain}) {
    if (assetPath.endsWith(".svg")) {
      return SvgPicture.asset(assetPath,
          width: width, height: height, fit: fit);
    } else {
      return Image.asset(assetPath, width: width, height: height, fit: fit);
    }
  }
}
