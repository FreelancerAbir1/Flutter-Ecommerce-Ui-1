import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF5722);
const kTextColor = Color(0xFF757575);
const kTextLightColor = Color(0xFFFAFAFA);
const kDefaultFontBold = TextStyle(fontWeight: FontWeight.bold);
const kDefaultFontNormal = TextStyle(fontWeight: FontWeight.normal);
const kBannerColor = Color(0xFF4A148C);

const Orientation portraitOrientation = Orientation.portrait;
const Orientation landscapeOrientation = Orientation.landscape;
OutlineInputBorder oulineInpuBorder() {
  return OutlineInputBorder(
    gapPadding: 10.0,
    borderRadius: BorderRadius.circular(25),
  );
}
