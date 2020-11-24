import 'package:flutter/material.dart';

const color_primary = "#15a6b1";

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}