import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant_app/product/initialize/localization/locale_keys.g.dart';
import 'package:restaurant_app/product/utils/constants/image_constants.dart';
import 'package:restaurant_app/product/utils/constants/product_text_styles.dart';
import 'package:restaurant_app/product/utils/page_padding.dart';

final class OnboardOrderView extends StatefulWidget {
  const OnboardOrderView({super.key});

  @override
  State<OnboardOrderView> createState() => _OnboardOrderViewState();
}

class _OnboardOrderViewState extends State<OnboardOrderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const PagePadding.all(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(ImageConstants.icOnboardOrder),
              Padding(
                padding: const PagePadding.vertical18Symmetric(),
                child: const Text(
                  LocaleKeys.onboarding_onboardingPhone_title,
                  style: ProductTextStyles.onboardTitle,
                ).tr(),
              ),
              const Text(
                LocaleKeys.onboarding_onboardingPhone_description,
                style: ProductTextStyles.onboardDescription,
                textAlign: TextAlign.center,
              ).tr(),
            ],
          ),
        ),
      ),
    );
  }
}
