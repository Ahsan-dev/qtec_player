
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

ThemeData AppTheme() {
  return ThemeData(
    fontFamily: 'Poppins',
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: const Color(0xFF0F1423),
      secondary: const Color(0xFF127A2F),
      tertiary: const Color(0xFF4FA06B),
      onTertiary: const Color(0xFF55A443),
      background: const Color(0xFFFFFFFF),
    ),
  );
}

class CustomColors {
  static Color getGray500(){
    return Get.context?.isDarkMode==true? Color(0xFFA0AEC0):Color(0xFFA0AEC0);
  }

  static Color getGray600(){
    return Get.context?.isDarkMode==true? Color(0xFF718096):Color(0xFF718096);
  }

  static Color getGray700(){
    return Get.context?.isDarkMode==true? Color(0xFF4A5568):Color(0xFF4A5568);
  }

  static Color getGray900(){
    return Get.context?.isDarkMode==true? Color(0xFF1A202C):Color(0xFF1A202C);
  }

  static Color getGray300(){
    return Get.context?.isDarkMode==true? Color(0xFFE2E8F0):Color(0xFFE2E8F0);
  }

  static Color getSimiBlack(){
    return Get.context?.isDarkMode==true? Color(0xFF72777B):Color(0xFF72777B);
  }

  static Color getButtonColor(){
    return Get.context?.isDarkMode==true? Color(0xFF3898FC):Color(0xFF3898FC);
  }
}