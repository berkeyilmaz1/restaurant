part of '../view/auth_view.dart';

final class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const PagePadding.allLow(),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ProductColors.secondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(WidgetSizes.spacingXsMid),
                ),
              ),
              ///TODO
              onPressed: () {},
              child: const Text(
                LocaleKeys.registration_login,
                style: ProductTextStyles.loginButtonTextStyle,
              ).tr(),
            ),
          ),
        ),
      ],
    );
  }
}
