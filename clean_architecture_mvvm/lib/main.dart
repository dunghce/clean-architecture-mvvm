import 'package:clean_architecture_mvvm/app/resources/language_manager.dart';
import 'package:clean_architecture_mvvm/presentation/app.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    supportedLocales: const [englishLocal, vietnamLocal],
    path: assetsPathLocalizations,
    fallbackLocale: vietnamLocal,
    child: const App(),
  ));
}
