import 'package:flutter/material.dart';
import 'package:restaurant_app/features/onboarding/onboard/onboard_view.dart';
import 'package:restaurant_app/features/onboarding/onboard_food/onboard_food_view.dart';
import 'package:restaurant_app/features/onboarding/onboard_map/view/onboard_map_view.dart';
import 'package:restaurant_app/features/onboarding/onboard_order/onboard_order_view.dart';
import 'package:restaurant_app/product/utils/constants/product_times.dart';

/// Mixin for [OnboardView] to separate the logic from the view.
mixin OnboardViewMixin on State<OnboardView> {
  /// ValueNotifier for the current page index
  final ValueNotifier<int> _currentPage = ValueNotifier<int>(0);
  ValueNotifier<int> get currentPage => _currentPage;

  /// PageController for the onboarding pages.
  final PageController _onboardingController = PageController();

  /// List of onboarding pages.
  final List<Widget> _onboardingPages = const [
    OnboardMapView(),
    OnboardFoodView(),
    OnboardOrderView(),
  ];

  /// Getters for the onboarding controller and pages.
  PageController get onboardingController => _onboardingController;
  List<Widget> get onboardingPages => _onboardingPages;

  /// Method to animate to the next page.
  void animateToNextPage() {
    _onboardingController.nextPage(
      duration: const Duration(milliseconds: ProductDurations.animateDurations),
      curve: Curves.easeIn,
    );
  }

  /// Method to animate to the last page.
  void animateToLastPage() {
    _onboardingController.jumpToPage(
      _onboardingPages.length - 1,
    );
  }
}
