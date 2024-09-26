import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:restaurant_app/features/onboarding/onboard/onboard_view_mixin.dart';
import 'package:restaurant_app/product/initialize/localization/locale_keys.g.dart';
import 'package:restaurant_app/product/utils/constants/product_colors.dart';
import 'package:restaurant_app/product/utils/constants/product_text_styles.dart';
import 'package:restaurant_app/product/utils/page_padding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

part '../widgets/onboarding_indicator.dart';

/// View for the onboarding pages.
final class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> with OnboardViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (int index) => currentPage.value = index,
            controller: onboardingController,
            children: onboardingPages,
          ),
          OnboardingIndicator(
            currentPage: currentPage,
            animateToNextPage: animateToNextPage,
            animateToLastPage: animateToLastPage,
            onboardingController: onboardingController,
            onboardingPages: onboardingPages,
          ),
        ],
      ),
    );
  }
}
