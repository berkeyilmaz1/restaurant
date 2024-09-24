import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant_app/product/initialize/localization/locale_keys.g.dart';
import 'package:restaurant_app/product/utils/constants/product_text_styles.dart';
import 'package:restaurant_app/product/utils/page_padding.dart';

class OnboardFoodView extends StatefulWidget {
  const OnboardFoodView({super.key});

  @override
  State<OnboardFoodView> createState() => _OnboardFoodViewState();
}

class _OnboardFoodViewState extends State<OnboardFoodView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const PagePadding.all(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/ic_onboard_food.svg'),
              Padding(
                padding: const PagePadding.vertical18Symmetric(),
                child: const Text(
                  LocaleKeys.onboarding_onboardingFood_title,
                  style: ProductTextStyles.onboardTitle,
                ).tr(),
              ),
              const Text(
                LocaleKeys.onboarding_onboardingFood_description,
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
