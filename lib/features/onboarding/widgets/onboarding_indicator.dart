part of '../onboard/onboard_view.dart';

///TODO: USE INHERITED ARCHITECTURE
final class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({
    required this.onboardingController,
    required this.onboardingPages,
    required this.animateToNextPage,
    required this.animateToLastPage,
    required this.currentPage,
    super.key,
  });

  final PageController onboardingController;
  final List<Widget> onboardingPages;
  final VoidCallback animateToNextPage;
  final VoidCallback animateToLastPage;
  final ValueNotifier<int> currentPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const PagePadding.all(),
      child: Container(
        ///TODO: USE CONST
        alignment: const Alignment(0, 0.9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ValueListenableBuilder(
              valueListenable: currentPage,
              builder: (_, value, __) {
                return TextButton(
                  onPressed: animateToLastPage,
                  child: const Text(
                    LocaleKeys.onboarding_skip,
                    style: ProductTextStyles.textStyle,
                  ).tr(),
                ).ext.toDisabled(
                      disable: value == onboardingPages.length - 1,
                    );
              },
            ),
            SmoothPageIndicator(
              controller: onboardingController,
              count: onboardingPages.length,
              effect: const WormEffect(
                activeDotColor: ProductColors.primaryColor,
                dotColor: ProductColors.secondaryColor,
              ),
            ),
            TextButton(
              onPressed: animateToNextPage,
              child: ValueListenableBuilder(
                valueListenable: currentPage,
                builder: (_, value, __) => Text(
                  value == onboardingPages.length - 1
                      ? LocaleKeys.onboarding_start
                      : LocaleKeys.onboarding_next,
                  style: ProductTextStyles.textStyle,
                ).tr(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
