import 'package:flutter/material.dart';
import 'package:restaurant_app/features/onboarding/onboard_food/onboard_food_view.dart';
import 'package:restaurant_app/features/onboarding/onboard_map/view/onboard_map_view.dart';
import 'package:restaurant_app/features/onboarding/onboard_order/onboard_order_view.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          OnboardMapView(),
          OnboardFoodView(),
          OnboardOrderView(),
        ],
      ),
    );
  }
}
