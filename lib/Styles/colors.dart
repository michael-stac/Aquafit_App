import 'package:flutter/material.dart';
class AppColors {
  static const splashScreen = Color(0xff0BCE83);
  static const onboardingBackground = Color(0xffE5E5E5);
  static const textHeader = Color(0xff4F4F4F);
  static const  container = Color(0xffEB5757);
  static const secondContainer = Color(0xff2F80ED);
  static const paragraphy = Color(0xff333333);
  static const primaryColor = lightGreen80;
  static const splashColor = Color.fromRGBO(11, 112, 65, 1);
  static const errorColor = Color.fromRGBO(155, 0, 0, 1);

  static const charcoal = Color.fromRGBO(61, 80, 89, 1);
  static const charcoal40 = Color.fromRGBO(171, 179, 183, 1);

  static const grey20 = Color.fromRGBO(215, 215, 216, 1); // TODO
  static const grey40 = Color.fromRGBO(185, 185, 186, 1);
  static const grey60 = Color.fromRGBO(156, 156, 157, 1);
  static const grey100 = Color.fromRGBO(96, 96, 98, 1);
  static const grey = Color.fromRGBO(215, 215, 216, 0.3);
  static const tileColor = Color.fromRGBO(215, 215, 216, 0.3);

  static const lightGreen40 = Color.fromRGBO(147, 209, 181, 1);
  static const lightGreen80 = Color.fromRGBO(0, 155, 84, 1);

  static const darkGreen = Color.fromRGBO(31, 97, 62, 1);
  static const darkGreen40 = Color.fromRGBO(159, 186, 172, 1);
  static const darkGreen80 = Color.fromRGBO(74, 127, 99, 1);

  static const Color otpFieldBgColor = Color.fromRGBO(235, 246, 241, 1);




}

class TextStyles {
  static const normal = fw400;
  static const semiBold = fw600;
  static const bold = fw700;

  static TextStyle fw400(double size, Color color) {
    return TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w400);
  }

  static TextStyle fw600(double size, Color color) {
    return TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w600);
  }

  static TextStyle fw700(double size, Color color) {
    return TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w700);
  }
}