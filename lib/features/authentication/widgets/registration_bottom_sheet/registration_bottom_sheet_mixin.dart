import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/features/authentication/widgets/registration_bottom_sheet/registration_bottom_sheet.dart';
import 'package:restaurant_app/product/initialize/localization/locale_keys.g.dart';

/// This mixin is used to separate the logic of the RegistrationBottomSheet widget
mixin RegistrationBottomSheetMixin on State<RegistrationBottomSheet> {
  final List<Widget> _tabs = [
    Tab(
      text: LocaleKeys.registration_createAccount.tr(),
    ),
    Tab(
      text: LocaleKeys.registration_login.tr(),
    ),
  ];

  List<Widget> get tabs => _tabs;
}
