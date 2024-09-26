part of '../view/auth_view.dart';

final class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const PagePadding.all(),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ProductColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(WidgetSizes.spacingXsMid),
                ),
              ),
              ///TODO
              onPressed: () {},
              child: const Text(
                LocaleKeys.registration_createAccount,
                style: ProductTextStyles.createAccButtonTextStyle,
              ).tr(),
            ),
          ),
        ),
      ],
    );
  }
}
