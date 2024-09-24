import 'package:flutter/material.dart';

enum Locales {
  en(Locale('en'));
  ///TODO: Add more locales here
  // tr(Locale('tr'));

  final Locale locale;
  const Locales(this.locale);
}
