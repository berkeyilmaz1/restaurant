import 'package:flutter/material.dart';
import 'package:restaurant_app/features/authentication/view/auth_view.dart';
import 'package:restaurant_app/features/authentication/widgets/registration_bottom_sheet/registration_bottom_sheet.dart';

mixin AuthViewMixin on State<AuthView> {
  void showRegistrationSheet() {
    showModalBottomSheet<SizedBox>(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return SizedBox(
          // Set the height to 3/4 of the screen
          height: MediaQuery.of(context).size.height * 0.75,
          child: const RegistrationBottomSheet(),
        );
      },
    );
  }
}
