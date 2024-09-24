import 'package:flutter/material.dart';
import 'package:restaurant_app/product/initialize/localization/enums/locale_enum.dart';

///Application Localization Constants
@immutable
final class LocaleConstants {
  const LocaleConstants._();

  static List<Locale> supportedLocales =
      Locales.values.map((e) => e.locale).toList();
}
