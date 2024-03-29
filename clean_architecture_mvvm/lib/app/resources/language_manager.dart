import 'package:flutter/material.dart';

enum LanguageType { english, vietnam }

const String vietnam = "vi-VN";
const String english = "en-US";
const String assetsPathLocalizations = "assets/translations";
const Locale vietnamLocal = Locale("vi", "VN");
const Locale englishLocal = Locale("en", "US");

extension LanguageTypeExtension on LanguageType {
  String getValue() {
    switch (this) {
      case LanguageType.english:
        return english;
      case LanguageType.vietnam:
        return vietnam;
    }
  }
}
