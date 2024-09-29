import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant_app/features/authentication/view/mixin/auth_view_mixin.dart';
import 'package:restaurant_app/product/initialize/localization/locale_keys.g.dart';
import 'package:restaurant_app/product/utils/constants/image_constants.dart';
import 'package:restaurant_app/product/utils/constants/product_colors.dart';
import 'package:restaurant_app/product/utils/constants/product_text_styles.dart';
import 'package:restaurant_app/product/utils/page_padding.dart';
import 'package:restaurant_app/product/utils/widget_sizes.dart';
import 'package:restaurant_app/product/widgets/custom_elevated_button.dart';

part '../widgets/login_button.dart';

final class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> with AuthViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const PagePadding.all(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            SvgPicture.asset(ImageConstants.icRegisterWelcome),
            const Text(
              LocaleKeys.registration_welcome,
              style: ProductTextStyles.onboardTitle,
            ).tr(),
            Padding(
              padding: const PagePadding.verticalLow12Symmetric(),
              child: const Text(
                LocaleKeys.registration_welcomeDesc,
                style: ProductTextStyles.onboardDescription,
                textAlign: TextAlign.center,
              ).tr(),
            ),
            const Spacer(),
            CustomElevatedButton(
              buttonText: LocaleKeys.registration_createAccount,
              backgroundColor: ProductColors.primaryColor,
              onPressed: showRegistrationSheet,
              buttonTextStyle: ProductTextStyles.createAccButtonTextStyle,
            ),
            ///todo use custom button
            const LoginButton(),
          ],
        ),
      ),
    );
  }
}
